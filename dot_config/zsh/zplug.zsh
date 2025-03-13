# shellcheck disable=SC1090
source ~/.zplug/init.zsh

# Plugins
zplug "Aloxaf/fzf-tab", from:github
#zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "MichaelAquilina/zsh-you-should-use", from:github
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"

#zsh-users/zsh-completions Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
   printf "Install missing plugins? [y/N]:"
   if read -q; then
      echo; zplug install
   fi
fi

# Then, source plugins and add commands to $PATH
zplug load