#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias dfs='git --git-dir=/home/lennart/.dotfiles/ --work-tree=/home/lennart/'
