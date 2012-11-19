alias t='tmux'
alias tk='tmux kill-server'
alias ta='t attach-session -t $@'
alias tl='t ls'

function tt() {
  # var for session name (to avoid repeated occurences)
  # sn=$RANDOM
  sn=`echo ${PWD##*/}`

  echo $sn

  # This will also be the default cwd for new windows created
  tmux new-session -d -s "$sn" 'reattach-to-user-namespace -l bash vim .'
# 
#   # New window
#   tmux new-window -t "$sn:1" 'reattach-to-user-namespace -l bash'
#   tmux new-window -t "$sn:2" 'reattach-to-user-namespace -l bash'
#   tmux new-window -t "$sn:3" 'reattach-to-user-namespace -l bash'
# 
#   # Select window #1 and attach to the session
#   tmux select-window -t "$sn:1"
#   tmux -2 attach-session -t "$sn"
}

# for tmux: export 256color
[ -n "$TMUX" ] && export TERM=screen-256color
