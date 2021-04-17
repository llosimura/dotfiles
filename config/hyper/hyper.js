module.exports = {
  config: {
  	updateChannel: "stable",
  	modifierKeys: {
  		altIsMeta: true
  	},
  	webGLRenderer: false,
    fontSize: 14,
    fontFamily: 'MesloLGS NF',
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
    "hyper-dracula",
    "hyperterm-summon",
    "hypercwd",
    "hyperlinks",
    "hyper-search",
  ],
  localPlugins: [],
};
