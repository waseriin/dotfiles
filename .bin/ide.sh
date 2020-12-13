#!/bin/bash

if [ "$#" -eq 0 ]; then
  tmux split-window -v
  tmux resize-pane -D 15
  tmux select-pane -t 1
else
  case $1 in
    2)
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -t 1
      clear
      ;;
    3)
      tmux split-window -v
      tmux split-window -h
      tmux resize-pane -D 15
      tmux select-pane -t 1
      clear
      ;;
    4)
      tmux split-window -h
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -t 1
      tmux split-window -v
      tmux select-pane -t 1
      clear
      ;;
    *)
      echo [ERROR] "$1" is not configured.
      ;;
  esac
fi
    
