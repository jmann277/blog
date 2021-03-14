#!/bin/sh

tmux has-session -t writing

if [ $? = 1 ]
then 
    tmux -f ~/.config/tmux/.tmux.conf new-session -s writing -d -n write 
    tmux new-window -t writing -d -n build 
    tmux new-window -t writing -d -n scratch 

    tmux -u -f ~/.config/tmux/.tmux.conf attach -t writing
else
    tmux -u -f ~/.config/tmux/.tmux.conf attach -t writing
fi
