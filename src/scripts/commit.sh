#!/usr/bin/env bash

if [[ -z $1 && -z $2 && -z $3 ]]; then
  if [[ $2 = ^[no]+$ || $2 = ^[idk]+$ ]]; then
    git commit -m "$1: $3"
  else
    git commit -m "$1<$2>: $3"
  fi
else
  echo "Not enough argument"
fi