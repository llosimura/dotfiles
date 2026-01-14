export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
export PATH=/Users/llosimura/.local/bin:$PATH

# Default editor
# Use neovim as EDITOR present
if command -v nvim &> /dev/null
then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

# Color configuration
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export AWS_PAGER=""

## Configure PGP signing
export GPG_TTY=$(tty)

# Load external profiles
PROFILE_DIR="${HOME}/.llosimura/profiles"
# if the directory PROFILE_DIR exists, source of the files in it
# this allows to load into the shell files that can't be part of git
if [ -d "$PROFILE_DIR" ]; then
    for file in "$PROFILE_DIR"/*; do
        source "$file"
    done
fi

# Turn off autocomplete beeps
unsetopt LIST_BEEP

eval "$(fnm env --use-on-cd --shell zsh)"

#export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
