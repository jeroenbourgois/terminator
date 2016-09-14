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

# tmux
alias t 'tmux'
alias tk 'tmux kill-server'
alias ta 't attach-session -t $ARGV'
alias tl 't ls'

# golang
set -x GOPATH $HOME/Dropbox/Work/go
# set -x GOROOT /usr/local/go
set -x PATH $PATH $GOPATH/bin $GOROOT/bin

# haskell
# set -x PATH $PATH $HOME/.stack/programs/x86_64-osx/ghc-7.10.2/bin $HOME/.local/bin

# android :(
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $HOME/Library/Android/sdk/tools $HOME/Library/Android/sdk/platform-tools

# editor
set -x REACT_EDITOR vim

# amazon cloudwatch
set -x AWS_ACCESS_KEY "AKIAIYH5HTUB6VGSCFXA"
set -x AWS_SECRET_KEY "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"
# set -x AWS_CREDENTIAL_FILE "<Path to the credentials file>"

# some functions
function ssh-copy
  cat ~/.ssh/id_rsa.pub | pbcopy
end
