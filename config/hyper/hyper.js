module.exports = {
  config: {
  	modifierKeys: {
  		altIsMeta: true
  	},
    fontSize: 14,
    fontFamily:'MesloLGS NF, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    padding: "15px",
    cursorShape: "BLOCK",
    shell: "/bin/zsh",
    shellArgs: ["--login"],
    env: {},
    bell: false,
    copyOnSelect: true,
    summon: {
      hotkey: "F12",
    },
  },
  plugins: [
    "hyper-gruvbox",
    "hyperterm-summon",
    "hypercwd",
    "hyperlinks",
    "hyper-search",
  ],
  localPlugins: [],
};
