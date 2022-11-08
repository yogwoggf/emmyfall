# 📜 Emmyfall

Emmyfall is a [Deno](https://deno.land) script that generates EmmyLua (and sumneko-lua) annotations for the [Starfall](https://github.com/thegrb93/StarfallEx) API.

# 🛠 Supported API

Currently Emmyfall generates annotations for all classes and libraries. Hooks are skipped for now. Callbacks are also not typed.

# 🧩 Extension

Emmyfall has a Visual Studio Code [extension](https://marketplace.visualstudio.com/items?itemName=Zubbbz.starfall) developed by [Zubbbz](https://github.com/Zubbbz/starfall-vscode).
Using it will automatically give your Starfall projects the typings by using automated generations from this repository.

# 💻 Usage

You need to install Deno prior to building the annotations yourself.
Once you have deno, run this deno command in your CLI:

```shell
deno run --allow-write --allow-read --allow-net main.ts
```

The deno script will output `emmyfall.lua` in the output. You can then use this file however you want.
You can copy it into your `starfall/` folder and open it as a workspace, or you can put it somewhere static on your disk and provide a path to sumneko lua to use it.
