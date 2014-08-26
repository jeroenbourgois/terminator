#!/bin/sh

if [[ `uname` == 'Darwin' ]]; then
  export GOPATH="$HOME/Dropbox/Work/go"
  export PATH="$PATH:$GOPATH/bin"
else
  # Go on linux
  export PATH=$PATH:/usr/local/go/bin
fi
export PATH=$PATH:/usr/local/opt/go/libexec/bin
