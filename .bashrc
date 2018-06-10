# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Some non-login shells won't load .shrc
if [ -z "$ENV_LOADED" ]; then
  . $HOME/.shrc
fi

# Bash overrides of the .shrc conf go below

# Environment variables
if [ -f "$HOME/.bash_env" ]; then
  . $HOME/.bash_env
fi

# Aliases
if [ -f "$HOME/.bash_aliases" ]; then
  . $HOME/.bash_aliases
fi

# Breakout directory
if [ -d "$HOME/.bashrc.d" ]; then
  for file in "$HOME/.bashrc.d"/*.bashrc; do
    . $file
  done
fi
