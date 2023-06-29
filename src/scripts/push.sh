#!/usr/bin/env bash

echo "push arg : $@"

if [[ -z $1 ]]; then
  git push
else
  git push $@
fi