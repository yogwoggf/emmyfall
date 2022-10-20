export enum Severity {
	Debug,
	Info,
	Warning,
	Error,
}

export function log(msg: string, severity: Severity = Severity.Info) {
	switch (severity) {
		case Severity.Debug:
			console.log(`%c[DEBUG]: %c${msg}`, "color: blue", "color: white");
			break;
		case Severity.Info:
			console.log(`%c[INFO]: %c${msg}`, "color: green", "color: white");
			break;
		case Severity.Warning:
			console.log(
				`%c[WARNING]: %c${msg}`,
				"color: yellow",
				"color: white"
			);
			break;
		case Severity.Error:
			console.log(`%c[ERROR]: %c${msg}`, "color: red", "color:white");
			Deno.exit(1);
	}
}
