# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV

# If using bash, load .bashrc
shell=$(ps ax | awk -v pid="$$" 'NR==1 { for (i=1; i<=NF; i++) { if ($i=="COMMAND") { title=i } } } $1==pid { if (i=title) { print $i } }')
if [ -n "$(echo $shell | grep bash)" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . $HOME/.bashrc
  fi
fi
