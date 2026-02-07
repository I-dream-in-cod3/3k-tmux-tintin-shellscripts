#!/bin/bash



session="cbot"

tmux has-session -t $session 2>/dev/null

  if [ $? == 0 ]; then
#kill session if it exists 
echo terminating: $session
tmux kill-session $cbot
else
    echo no active session called $session
  fi

#echo gecko
