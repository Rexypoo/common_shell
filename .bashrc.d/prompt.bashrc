# Construct the shell prompt
uid=$(id -u)
shell_user='$(whoami)'
shell_host='$(hostname)'
shell_path='$(echo $(pwd) | sed "s|^"$HOME"|~|")'
shell_path_base='$(basename '$shell_path')'
shell_separator='$(if [ $uid = "0" ]; then echo "#"; else echo "$"; fi)'

bash_bold_green="\[\033[01;32m\]"
bash_bold_blue="\[\033[01;34m\]"
bash_default="\[\033[00m\]"

# Escape characters need to be escaped for sed
bash_bold_green=$(echo $bash_bold_green | sed 's&\\&\\\\&g')
bash_bold_blue=$(echo $bash_bold_blue | sed 's&\\&\\\\&g')
bash_default=$(echo $bash_default | sed 's&\\&\\\\&g')

PS1=$(echo $PS1 | sed 's&'"${shell_user}@${shell_host}"'&'"${bash_bold_green}${shell_user}@${shell_host}${bash_default}"'&')
PS1=$(echo $PS1 | sed 's&'"${shell_path}"'&'"${bash_bold_blue}${shell_path}${bash_default}"'&')
# Some shells strip trailling whitespace so add it back in...
PS1="$PS1 "
# DO NOT EXPORT PS1 - It does more harm than good
