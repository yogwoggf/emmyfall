import { generate } from "./generator.ts";

const generatedFile = await generate();

try {
	await Deno.mkdir("output");
} catch {
	// No-op
	// This is ugly, but apparently this is pretty much the "right" way to do this.
	// https://github.com/denoland/deno_std/issues/1216#issuecomment-937722077
	// I mean the comment is pretty reasonable.. but still a bit ugly this way.
}

await Deno.writeTextFile("output/emmyfall.lua", generatedFile);
