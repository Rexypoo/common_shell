# Common Shell

The common_shell project is an attempt to unify the user experience of all Bourne-based shells by leveraging the common POSIX backend as much as possible.

## Supported Shells

These scripts were mostly built with bash and zsh in mind, however the configuration settings should make it compatible with all [descendents of the Bourne shell].

## Answers to questions about the project
### Why use such strange syntax for aliases?
The basic Bourne shell (and by extension the Almquist shell used on BSD) does not support aliases the way bash does, however it does support [functions]. A simple function can perform similar tasks to an alias while maintaining compatibility across all shells.
### Why are there so many BSD-specific checks?
BSD does some things differently from Linux. Most importantly some of the very basic commands on BSD use different flags (e.g. to make `ls` print color output on linux you can use `ls --color` but on BSD the flag is `ls -G`). One workaround is to install and use the GNU coreutils on BSD and alias those commands. If you have already installed the coreutils (by running `pkg install coreutils`) these rc files should automatically alias to them.

[descendents of the Bourne shell]: https://en.wikipedia.org/wiki/Unix_shell#Bourne_shell
[functions]: https://www.shellscript.sh/functions.html
