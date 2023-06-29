#!/usr/bin/env bash

read -p "Do you want to install this package? [y/N] : " option

if [[ $option =~ ^[y]+$ || $option =~ ^[Y]+$ ]]; then
  cd ~/.config/.kgit
  rm -rf *
  git clone https://github.com/katzEco/katzu-git-cli.git
  cd katzu-git-cli/src
  mv * ~/.config/.kgit
  cd ~/.config/.kgit
  rm -rf katzu-git-cli
  rm installer.sh

  clear
  echo "This package is successfully upgraded!"
  echo "Please enjoy :) - dethM"
fi