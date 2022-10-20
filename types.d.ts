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
export interface Docs {
	Libraries: Record<string, Library>;
	Types: Record<string, SFObject>;

	Version: string;
}
