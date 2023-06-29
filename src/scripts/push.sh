#!/usr/bin/env bash

if [[ -z $1 ]]; then
  git push
else
  git push $@
fi