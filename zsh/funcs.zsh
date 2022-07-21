#!/usr/bin/env zsh

# https://superuser.com/questions/836636/how-to-show-a-caret-c-in-canceled-command-line-in-zsh-like-bash-does
TRAPINT() {
  print -n "^C"
  return $(( 128 + $1 ))
}

