# Construct the shell prompt
uid=$(id -u)
shell_user='$(whoami)'
shell_host='$(hostname)'
shell_path='$(echo $(pwd) | sed "s|^"$HOME"|~|")'
shell_path_base='$(basename '$shell_path')'
shell_separator='$(if [ $uid = "0" ]; then echo "#"; else echo "$"; fi)'

bash_green="\[\033[01;32m\]"
bash_blue="\[\033[01;34m\]"
bash_default="\[\033[00m\]"

dynamic_prompt='['${bash_green}${shell_user}'@'${shell_host}${bash_default}' '${bash_blue}${shell_path}${bash_default}']'$shell_separator' '

PS1=$dynamic_prompt
# DO NOT EXPORT PS1 - It does more harm than good
