if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then
  exec tmux
fi
alias vi=nvim
