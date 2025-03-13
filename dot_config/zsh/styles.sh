# Style completions
#disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# allow stacking of docker completions
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# use popup menu when running in tmux
#zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# switch group using `,` and `.`
#zstyle ':fzf-tab:*' switch-group ',' '.'