source ~/.zplug/init.zsh

# Load theme
#zplug mafredri/zsh-async, from:github
#zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
#zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug romkatv/powerlevel10k, as:theme

# Plugins
zplug plugins/aws, from:oh-my-zsh
zplug plugins/docker, from:oh-my-zsh
zplug plugins/fzf, from:oh-my-zsh
zplug Aloxaf/fzf-tab, from:github
zplug plugins/git, from:oh-my-zsh
zplug plugins/git-extras, from:oh-my-zsh
zplug plugins/node, from:oh-my-zsh
zplug plugins/npm, from:oh-my-zsh
zplug plugins/macos, from:oh-my-zsh
zplug plugins/z, from:oh-my-zsh
zplug plugins/vi-mode, from:oh-my-zsh
zplug plugins/terraform, from:oh-my-zsh
# zplug lukechilds/zsh-nvm
zplug zsh-users/zsh-syntax-highlighting
zplug zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-completions

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
   printf "Install missing plugins? [y/N]:"
   if read -q; then
      echo; zplug install
   fi
fi

# Then, source plugins and add commands to $PATH
zplug load
