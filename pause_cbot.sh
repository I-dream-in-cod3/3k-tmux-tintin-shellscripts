#!/bin/bash




session="cbot"

# Check if the session exists, discarding output
# We can check $? for the exit status (zero for success, non-zero for failure)

 tmux has-session -t $session 2>/dev/null

if [ $? == 0 ]; then


echo pausing the script
tmux send-keys -t $session ^C

tmux send-keys -t $session "stop" Enter



else
    echo no active session called $session
fi

# Attach to created session
#   tmux attach-session -t $session
#   not needed since this script isnt for attatching and iOS shortcuts is not a terminal
