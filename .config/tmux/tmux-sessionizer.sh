#!/usr/bin/env bash

selected=$(find $HOME/Documents/UniMelb-2024/ $HOME/Documents/UniMelb-2025/ $HOME/programming/ -mindepth 1 -maxdepth 1 -type d | fzf-tmux -p 100% --border none)

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected 
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null;then
    tmux new-session -ds $selected_name -c $selected 'nvim; bash'
    tmux switch-client -t $selected_name
    tmux new-window -c $selected -d
    exit 0
fi

tmux switch-client -t $selected_name
