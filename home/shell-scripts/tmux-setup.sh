#!/bin/sh
# Creates and configures tmux sessions

# HOME
tmux has-session -t home 2>/dev/null
if [ $? -ne 0 ]; then
    tmux new-session -ds home -c ~/
    tmux send-keys -t home 'clear && neofetch' 'C-m'
fi

# NIXOS CONFIG
tmux has-session -t nixos-config 2>/dev/null
if [ $? -ne 0 ]; then
    tmux new-session -ds nixos-config -c ~/nixos-config
    tmux send-keys -t nixos-config 'nvim' 'C-m'
fi

# NOTES
tmux has-session -t notes 2>/dev/null
if [ $? -ne 0 ]; then
    tmux new-session -ds notes -c ~/Notes/muni/semester_5
    tmux send-keys -t notes 'nvim' 'C-m'
fi

# GHCI
tmux has-session -t ghci 2>/dev/null
if [ $? -ne 0 ]; then
    tmux new-session -ds ghci
    tmux send-keys -t ghci 'clear && ghci' 'C-m'
fi

# DOCKER
tmux has-session -t docker 2>/dev/null
if [ $? -ne 0 ]; then
    tmux new-session -ds docker
    tmux send-keys -t docker 'clear && lazydocker' 'C-m'
fi

# BTOP
tmux has-session -t btop 2>/dev/null
if [ $? -ne 0 ]; then
    tmux new-session -ds btop
    tmux send-keys -t btop 'clear && btop' 'C-m'
fi

tmux attach-session -t home
