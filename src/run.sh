#!/usr/bin/env bash

BASE_SOURCE='~/.config/.kgit'
HOME_SOURCE="${BASE_SOURCE}/scripts"

source ${HOME_SOURCE}/function.sh

if [[ -z $1 ]]; then
  echo 'There is no arguments inputing here..'
  source ${HOME_SOURCE}/help.sh
else
  if [[ $1 =~ ^[add]+$ || $1 =~ ^[a]+$ ]]; then
    if [[ $2 =~ ^[.]+$ ]]; then
      echo 'adding all files..'
      source "${HOME_SOURCE}/add.sh" .
    else
      source $HOME_SOURCE/add.sh $(listArg "2" "$@")
    fi
  elif [[ $1 =~ ^[commit]+$ || $1 =~ ^[c]+$ ]]; then
    if [[ -z $2 && -z $3 && -z $4 ]]; then
      echo "Can't commiting blank commit.."
      echo ""
    else
      source $HOME_SOURCE/commit.sh $(listArg "2" "$@")
    fi
  elif [[ $1 =~ ^[push]+$ || $1 =~ ^[p]+$ ]]; then
    if [[ -z $2 ]]; then
      source ${HOME_SOURCE}/push.sh ''
    else
      source ${HOME_SOURCE}/push.sh $(listArg "2" "$@")
    fi
  elif [[ $1 =~ ^[update]+$ ]]; then
    source ${BASE_SOURCE}/update.sh
  elif [[ $1 =~ ^[help]+$ || $1 =~ ^[h]+$ ]]; then
    source ${HOME_SOURCE}/help.sh $1
  else
    echo "There is no argument '${1}'.."
    source "${HOME_SOURCE}/help.sh"
  fi
fi