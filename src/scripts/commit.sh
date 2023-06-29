#!/usr/bin/env bash

listArg() {
  local argument_number=$1
  shift "$argument_number"
  local arguments=("$@")
  echo "${arguments[@]}"
}

if [[ -z $1 && -z $2 && -z $3 ]]; then
  echo "Not enough argument"
else
  if [[ $2 = ^[no]+$ || $2 = ^[idk]+$ ]]; then
    git commit -m "$1: $(listArg "3" "$@")"
  else
    git commit -m "$1<$2>: $(listArg "3" "$@")"
  fi
fi