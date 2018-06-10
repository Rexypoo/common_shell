# Construct the shell prompt
uid=$(id -u)
shell_user='$(whoami)'
shell_host='$(hostname)'
shell_path='$(echo $(pwd) | sed "s|^"$HOME"|~|")'
shell_path_base='$(basename '$shell_path')'
shell_separator='$(if [ $uid = "0" ]; then echo "#"; else echo "$"; fi)'

zsh_bold_green="%B%F{green}"
zsh_bold_blue="%B%F{cyan}"
zsh_default="%f%b"

dynamic_prompt='['${zsh_bold_green}${shell_user}'@'${shell_host}${zsh_default}' '${zsh_bold_blue}${shell_path}${zsh_default}']'$shell_separator' '

PS1=$dynamic_prompt
# DO NOT EXPORT PS1 - It does more harm than good
