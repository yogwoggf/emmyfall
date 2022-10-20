export interface FunctionValue {
	name: string;
	type: string;
	description: string;
}

export interface Field {
	name: string;
	description: string;
	// Bruh.. no typing??
}

export interface TableValue {
	realm: string;
	name: string;
	description: string;
	fields: Field[] | undefined;
}

export interface Func {
	path: string;
	returns: FunctionValue[] | undefined;
	params: FunctionValue[] | undefined;
	realm: string;
	name: string;
}

export interface Library {
	methods: Func[];
	tables: TableValue[];
	fields: Field[] | undefined;

	realm: string;
	path: string;
	name: string;
	description: string;
}

export interface SFObject {
	path: string;
	name: string;
	description: string;

	methods: Func[];
}

export interface Hook {
	name: string;
	description: string;
}

export interface Docs {
	Libraries: Record<string, Library>;
	Types: Record<string, SFObject>;
	Hooks: Record<string, Hook>;

	Version: string;
}

// This is for supporting JSON overrides, currently you can only
// override the type of a generated function.
export type Overrides = Record<string, Record<string, Record<string, string>>>;
