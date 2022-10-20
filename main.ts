import { generate } from "./generator.ts";

const generatedFile = await generate();

Deno.writeTextFile("output/emmyfall.lua", generatedFile);
