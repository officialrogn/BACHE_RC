# ~/.bashrc
# common ~/.bashrc for Ubuntu users
# The aim is to have a common .bashrc for current commands used in forum.ubuntu-fr.org support. It uses aliases to simplify bash commands
# e.g.  alias ls='ls --color=auto'
# Execute with a terminal (CTRL ALT T) the following command : source ~/.bashrc to refresh aliases list.
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
