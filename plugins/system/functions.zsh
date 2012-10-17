#!/bin/sh

# Create a new directory and enter it
md() {
  mkdir -p "$@" && cd "$@"
}

# like Sherlock Holmes, find process
holmes() {
  ps aux | grep $@ | grep -v grep
}
