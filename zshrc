# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# PATH
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Owner
export DEFAULT_USER="kristofer"

# Helpers
source ~/Dropbox/User/dotfiles/.aliases
source ~/Dropbox/User/dotfiles/.functions
