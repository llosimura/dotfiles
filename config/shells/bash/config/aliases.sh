# Alias for ant with debugging enabled
alias dant='ANT_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005 -Xms768m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=256m" ant'

# Alias Hub to get a better Github integration
alias git=hub

# Use neovim if present
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
  alias vi='nvim'
fi

# Some better aliases
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'
alias ll='ls -FGlAhp'
alias less='less -FSRXc'

# Full recursive directory listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# Navigation aliases
alias cd..='cd ../'
alias cdr='cd $(git rev-parse --show-toplevel)'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

#Clear terminal
alias c='clear'

# Better path output
alias path='echo -e ${PATH//:/\\n}'

# Get public facing IP Address
alias myip='curl checkip.amazonaws.com'

# Add local aliases if any
if [ -f ~/.local_shell_aliases ]; then
    source ~/.local_shell_aliases
fi

