import { log, Severity } from "./logging.ts";
import { Docs, Field, Func, Library, SFObject } from "./types.d.ts";

const DOCS_URL =
	"https://raw.githubusercontent.com/thegrb93/StarfallEx/gh-pages/sf_doc.json";
class Document {
	body = "---@meta\n-- Generated with emmyfall\n";
	tab_level = 0;
	current_table = "";

	emit_raw_text(text: string) {
		this.body += text;
	}

	add_text(text: string) {
		this.body += "\t".repeat(this.tab_level) + text + "\n";
	}

	add_comment(comment: string) {
		// The docs currently have manual newlines placed for every
		// description. We work around this by making a new emmylua
		// comment (twice for a newline in the rendered tooltip) for every new line.
		if (comment.includes("\n")) {
			const lines = comment.split("\n");
			for (const line of lines) {
				// EmmyLua comments require an extra empty comment
				// to render a newline.
				this.add_text(`--- `);
				this.add_text(`--- ${line}`);
			}
		} else {
			this.add_text(`--- ${comment}`);
		}
	}

	set_table(parent_name: string, name: string, fields?: Field[]) {
		if (parent_name == "builtins") {
			this.add_text(`_G.${name} = {`);
		} else {
			this.add_text(`_G.${parent_name}.${name} = {`);
		}

		if (!fields) {
			this.emit_raw_text("}"); // Nothing to do, empty table.
			return;
		}

		this.tab_level++;

		for (const field of fields) {
			// Unfortunately, there's no typing for fields.
			// But everything I have seen appears to be a number, but-
			// I'm not going to assume it, so it'll be untyped.

			this.add_text(`---@type any`);
			if (field.description && field.description.length > 0) {
				this.add_comment(field.description);
			}
			this.add_text(`["${field.name}"] = nil,`);
		}

		this.tab_level--;
		this.add_text("}");
	}

	begin_library(library: Library) {
		this.add_comment(`${library.name}`);
		this.add_comment(`${library.description}`);
		const declaration =
			library.name == "builtins" ? `_G = {}` : `_G.${library.name} = {}`;
		this.add_text(declaration);

		for (const idx in library.tables) {
			const table = library.tables[idx];
			this.add_comment(`${table.name} - ${table.realm}`);
			this.add_comment(`${table.description}`);
			this.set_table(library.name, table.name, table.fields);
		}

		if (library.fields) {
			for (const idx in library.fields) {
				const field = library.fields[idx];
				if (field.description && field.description.length > 0) {
					this.add_comment(field.description);
				}

				this.add_text(`---@type any`);
				if (library.name == "builtins") {
					this.add_text(`_G["${field.name}"] = nil`);
				} else {
					this.add_text(`_G.${library.name}["${field.name}"] = nil`);
				}
			}
		}

		this.tab_level++;
		if (library.name != "builtins") {
			this.current_table = "." + library.name;
		} else {
			// Doing this will make the functions assign globally.
			this.current_table = "";
		}
	}

	begin_object(object: SFObject) {
		this.add_comment(object.description);
		this.add_text(`---@class ${object.name}`);

		// We also have to use sumneko annotations
		// to get operations to work properly.
		// This means we must scan the methods
		// earlier to find metamethods and properly
		// annotate them with ---@operator

		// By the way, because this generates procedurally to whatever
		// the metamethods look like for a specific object, so it will actually
		// generate annotations for unsupported metamethods for Sumneko Lua.
		// I'm gonna leave it in there, I mean they could get supported and
		// emmyfall could support it off the bat.
		// Unsupported metamethods: __eq, __index, __newindex, __tostring

		for (const idx in object.methods) {
			const metamethod = object.methods[idx];

			if (metamethod.name.substring(0, 2) == "__") {
				const normalName = metamethod.name.substring(2);
				if (
					metamethod.params &&
					metamethod.returns &&
					metamethod.returns.length == 1
				) {
					if (metamethod.params.length == 2) {
						// __add, __div, __mul, __eq, etc..
						this.add_text(
							`---@operator ${normalName}(${metamethod.params[1].type}):${metamethod.returns[0].type}`
						);
					} else if (metamethod.params.length == 1) {
						// __unm, __index
						this.add_text(
							`---@operator ${normalName}(${metamethod.params[0].type}):${metamethod.returns[0].type}`
						);
					} else {
						// __newindex (TODO: does sumneko handle multiple operator parameters?)
						// __newindex uses three.
						log(
							`Unable to handle metamethod '${metamethod.name}' for ${object.name}.`,
							Severity.Warning
						);
					}
				} else if (
					metamethod.returns &&
					metamethod.returns.length == 1
				) {
					// __tostring
					this.add_text(
						`---@operator ${normalName}:${metamethod.returns[0].type}`
					);
				} else {
					log(
						`Unable to handle metamethod '${metamethod.name}' for ${object.name}.`,
						Severity.Warning
					);
				}
			}
		}

		this.add_text(`_G.${object.name} = {}`);

		this.tab_level++;
		this.current_table = "." + object.name;
	}

	end() {
		this.tab_level--;
		this.current_table = "";
	}

	add_function(func: Func, is_class = false) {
		const { path, returns, params, realm, name } = func;
		this.add_comment(`${name} - ${realm} - ${path}`);

		const funcType = is_class ? ":" : ".";
		let signature = `function _G${this.current_table}${funcType}${func.name}(`;

		if (params) {
			const paramNames = [];

			for (const param of params) {
				let name = param.name;

				if (name == "end") {
					name = "_end";
					// I understand this looks like a shitty hardcoded condition
					// but it's literally the ONLY issue in the entirety
					// of the starfall API. There's also only 2 occurrences of it.
				}

				// Some functions are untyped.
				this.add_text(
					`---@param ${name} ${param.type || "any"} ${
						param.description
					}`
				);
				paramNames.push(name);
			}

			signature += paramNames.join(", ");
		}

		if (returns) {
			for (const _return of returns) {
				this.add_text(
					`---@return ${_return.type || "any"} ${_return.name} ${
						_return.description
					}`
				);
			}
		}

		signature += ") end";
		this.add_text(signature);
	}

	generate(): string {
		return this.body;
	}
}

export async function generate(): Promise<string> {
	const response = await fetch(DOCS_URL);
	const docs: Docs = await response.json();

	const document = new Document();
	log("Received starfall docs..");
	log(`Using version: ${docs.Version}`);

	for (const idx in docs.Libraries) {
		const lib = docs.Libraries[idx];

		log(`Processing '${lib.name}'...`);
		document.begin_library(lib);
		for (const funcIdx in lib.methods) {
			const func = lib.methods[funcIdx];
			document.add_function(func);
		}
		document.end();
	}

	for (const idx in docs.Types) {
		const object = docs.Types[idx];

		log(`Creating '${object.name}'`);
		document.begin_object(object);
		for (const funcIdx in object.methods) {
			const func = object.methods[funcIdx];

			if (func.name.substring(0, 2) == "__") {
				// Ignore metamethods as we already annotated them.
				// It's also not correct to use them directly.
				continue;
			}

			document.add_function(func, true);
		}
		document.end();
	}

	log("Done!");
	return document.generate();
}
