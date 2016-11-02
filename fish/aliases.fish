# Make the blue color for directories more readable
set -x LSCOLORS Exfxcxdxbxegedabagacad

# simple aliases
alias ll 'ls -CFh'
alias la 'ls -Ah'
alias l 'ls -laoh'

# vim
alias v 'vim'
alias ve 'cd ~/.vim; vim vimrc'
alias vep 'cd ~/.vim; vim ~/.vimrc.local'

# git
alias gl 'git pull'
alias gp 'git push'
alias gst 'git status'
alias gsync 'git stash; and git pull; and git stash pop'
alias gpp 'git commit --allow-empty -m "[deploy:production]"; and git push'
alias glg "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

function gc
  git commit -m "$argv"
end

function ga
  git add $argv
end

function gap
  git add -p $argv
end

# hot locations
alias gogo 'cd $GOPATH'
alias jackjoe "cd $HOME/work/jackjoe"
alias dev 'cd $HOME/work'
alias terminator 'cd $HOME/.terminator'

# bin
set -x PATH $PATH $HOME/.terminator/bin

# tmux
alias t 'tmux'
alias tk 'tmux kill-server'
alias ta 't attach-session -t $ARGV'
alias tl 't ls'

# golang
set -x GOPATH $HOME/Dropbox/Work/go
# set -x GOROOT /usr/local/opt/go/libexec/bin
set -x PATH $PATH $GOPATH/bin /usr/local/opt/go/libexec/bin

# haskell
# set -x PATH $PATH $HOME/.stack/programs/x86_64-osx/ghc-7.10.2/bin $HOME/.local/bin

# android :(
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $HOME/Library/Android/sdk/tools $HOME/Library/Android/sdk/platform-tools

# editor
set -x REACT_EDITOR vim

# some functions
function ssh-copy
  cat ~/.ssh/id_rsa.pub | pbcopy
end

function sshc
  ssh-config
end

function apache-restart
  sudo apachectl restart
end

function hosts
  sudo vim /etc/hosts
end

function vhosts
  sudo vim /etc/apache2/extra/httpd-vhosts.conf
end

function apachec
  sudo vim /etc/apache2/httpd.conf
end

function apache-config
  apachec
end

function ssh-config
  vim ~/.ssh/config
end

# mutt
function mutt
  bash --login -c 'cd ~/Desktop; /usr/local/bin/mutt' $argv;
end

alias m mutt
