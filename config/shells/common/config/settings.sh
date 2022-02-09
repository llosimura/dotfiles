# Default editor
# Use neovim as EDITOR present
if type nvim > /dev/null 2>&1;
then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

# Ant configuration
export ANT_OPTS='-Xms768m -Xmx1024m'

# Increase node memory by default
export NODE_OPTIONS='--max-old-space-size=3096'

# Color configuration
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# GO configuration
export GOPATH=$HOME/go

# Path configuration
export PATH="$HOME/.local/bin:$HOME/.yarn/bin:$HOME/bin:$HOME/.jenv/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/flutter/bin:$PATH"

# Configure FZF
# Do not use full screen mode
export FZF_DEFAULT_OPTS='--height 50% --reverse'
# Use ripgrep instead of grep
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

## Configure PGP signing
export GPG_TTY=$(tty)

# Configure SDK man
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"