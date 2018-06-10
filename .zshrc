# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rex/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Some non-login shells won't load .shrc
if [ -z "$ENV_LOADED" ]; then
  . $HOME/.shrc
fi

# zsh overrides of the .shrc conf go below

# Environment variables
if [ -f "$HOME/.zsh_env" ]; then
  . $HOME/.zsh_env
fi

# Aliases
if [ -f "$HOME/.zsh_aliases" ]; then
  . $HOME/.zsh_aliases
fi

# Breakout directory
if [ -d "$HOME/.zshrc.d" ]; then
  for file in "$HOME/.zshrc.d"/*.zshrc; do
    . $file
  done
fi
