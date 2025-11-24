# Some better aliases
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias less='less -FSRXc'

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

# Use rlwrap to wrap mysql if present
if command -v rlwrap &> /dev/null
then
  alias mysql='rlwrap mysql'
fi

# Get public facing IP Address
alias myip='curl checkip.amazonaws.com'

# Use eza instead of ls if present
if command -v eza &> /dev/null
then
  alias l='eza -lh --group-directories-first --color=auto --git --icons --no-permissions --no-user'
  alias ll='eza -lahF --group-directories-first --color=auto --git --icons'
else
  alias ls='ls -GFh'
  alias ll='ls -FGlAhp'
fi

# Use bat instead of cat if present
if command -v bat &> /dev/null
then
  alias cat='bat'
fi

# Alias vi & vim to neovim
if command -v nvim &> /dev/null
then
  alias vi='nvim'
  alias vim='nvim'
fi

