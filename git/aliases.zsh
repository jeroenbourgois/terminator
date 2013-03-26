#!/bin/sh

source $ZSH_CUSTOM/system/colors.zsh

alias gap='git add -p'
alias gcam='git commit -v -am $1'
alias gcom='git commit -v -m $1'
alias gd='echo -e "${COLOR_BLUE} » git diff ${COLOR_RESET}"; git diff'
alias gsync='echo "git stash"; echo "git pull"; echo "git stash pop"; git stash && git pull && git stash pop'
