tmux has-session -t writing

if [ $? = 1 ]
then 
    tmux -f ~/.config/tmux/.tmux.conf new-session -s writing -d -n source 
    tmux new-window -t writing -d -n build 

    tmux send-keys -t writing:source "cd docs/source" Enter
    tmux send-keys -t writing:build "cd docs/" Enter

    tmux -u -f ~/.config/tmux/.tmux.conf attach -t writing
else
    tmux -u -f ~/.config/tmux/.tmux.conf attach -t writing
fi
