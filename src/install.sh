#!/usr/bin/env bash

read -p "Do you want to install this package? [y/N] : " option

if [[ $option =~ ^[y]+$ || $option =~ ^[Y]+$ ]]; then
  mkdir ~/.config/.kgit
  cd ~/.config/.kgit
  rm -rf *
  git clone https://github.com/katzEco/katzu-git-cli.git
  cd katzu-git-cli/src
  mv * ~/.config/.kgit
  cd ~/.config/.kgit
  rm -rf katzu-git-cli
  rm installer.sh

  # export alias kgit="~/.config/.kgit/tui.sh"
  cp ~/.zshrc ~/.zshrc-kgit-bak
  echo -e '\nalias kg="~/.config/.k-lazy/script.sh"' >> ~/.zshrc
  sleep 1 &
  wait
  clear
  
  echo "'kg' is installed to your console"
  echo "please run 'source ~/.zshrc' first"
  echo "and then try run 'kg' in your zsh"
fi