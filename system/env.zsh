export HISTCONTROL=erasedups # Erase duplicates
export HISTCONTROL=ignoreboth # Ignore same sucessive entries.
export HISTSIZE=6000 # resize history size

if [[ $CURRENT_SHELL == 'bash' ]]; then
  shopt -s histappend # append to bash_history if Terminal.app quits
fi


# SHELL
################################################################################

if [[ $CURRENT_SHELL == 'bash' ]]; then
  export SHELL=/bin/bash
else
  export SHELL=/bin/zsh
fi

# EDITOR
################################################################################

export EDITOR=vim

# PATH
################################################################################

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"
export PATH="/Volumes/data/Users/jeroenb/.oh-my-zsh/custom/tmux:$PATH"
export PATH="/Volumes/data/Users/jeroenb/Applications:$PATH"

export PATH

################################################################################

export CLICOLOR=1;

export TZ='Europe/Brussels'; 

export LANGUAGE="en_US.UTF-8"
export LANG="C"
export LC_MESSAGES="C"

################################################################################

if [[ `uname` == 'Darwin' ]]; then

  # OSX

  export LS_OPT=''

  # export LANG="en_US.UTF-8"
  # export LC_COLLATE="en_US.UTF-8"
  # export LC_CTYPE="en_US.UTF-8"
  # export LC_MESSAGES="en_US.UTF-8"
  # export LC_MONETARY="en_US.UTF-8"
  # export LC_NUMERIC="en_US.UTF-8"
  # export LC_TIME="en_US.UTF-8"
  # export LC_ALL=

# elif [[ `uname` == 'Linux' ]]; then
else

  # LINUX

  export LS_OPT='--color=auto'

fi

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=
