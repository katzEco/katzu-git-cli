#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo ""
fi 

echo "=============================================="
echo "               katzu's Lazy git"
echo ""
echo "  [help / h]: a command to show this page"
echo "  [add /a]: add file to your commit"
echo "    example: kg a [filenames or '.']"
echo "  [commit / c]: commit new file to your git repo"
echo "    example: kg c [commit type] [scope (if don't have scope type 'no' or 'idk')] [subject]"
echo "  [update]: update this package :)"
echo ""
echo "=============================================="