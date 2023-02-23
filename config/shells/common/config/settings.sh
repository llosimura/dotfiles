# Default editor
# Use neovim as EDITOR present
if command -v nvim &> /dev/null
then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

# Increase node memory by default
export NODE_OPTIONS='--max-old-space-size=3096'

# Color configuration
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# Configure FZF
# Do not use full screen mode
export FZF_DEFAULT_OPTS='--height 50% --reverse'
# Use ripgrep instead of grep
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

## Configure PGP signing
export GPG_TTY=$(tty)

## Add crowdin cli
export PATH="/opt/homebrew/opt/crowdin@3/bin:$PATH"

# Load external profiles
PROFILE_DIR="${HOME}/.llosimura/profiles"
# if the directory PROFILE_DIR exists, source of the files in it
# this allows to load into the shell files that can't be part of git
if [ -d "$PROFILE_DIR" ]; then
    for file in "$PROFILE_DIR"/*; do
        source "$file"
    done
fi
