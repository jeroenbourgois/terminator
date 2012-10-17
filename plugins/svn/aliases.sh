#!/bin/sh

source $HOME/.terminator/sys/colors.sh

alias svns='echo -e "${COLOR_BLUE} » svn status ${COLOR_RESET}"; svn st'
alias svnc='echo -e "${COLOR_YELLOW} » svn commit -m ${COLOR_RESET}"; svn commit -m "$@"'
alias svnu='echo -e "${COL_BLUE} » svn up ${COLOR_RESET}"; svn up '
alias svnl='echo -e "${COL_YELLOW} » svn log -l 5 ${COLOR_RESET}"; svn log -l 5'

alias svn-status-all='~/.terminator/svn/bin/svnstatus.py $@'
alias svn-up-all='~/.terminator/svn/bin/svnup.py $@'
