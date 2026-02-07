#!/bin/bash




session="cbot"

# Check if the session exists, discarding output
# We can check $? for the exit status (zero for success, non-zero for failure)

 tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]; then
# Set up your session
tmux new-session -d -s cbot "tt++ cbot.tin"
fi
