#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# neofetch

export PATH="$PATH:/home/josh/Documents/Honours-Research-Project/development/SnapPy/venv/bin/"
export LUA_PATH="/home/josh/.config/nvim/lua/custom/picker.lua;;"

alias config='/usr/bin/git --git-dir=/home/josh/.cfg/ --work-tree=/home/josh'
