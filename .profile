# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV

# If using bash, load .bashrc
shell=$(ps -p "$$" -o command=)
if [ -n "$(echo $shell | grep bash)" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . $HOME/.bashrc
  fi
fi
