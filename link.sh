#!/bin/sh

cd ~/dotfiles
for file in .*; do
  if [[ "$file" == "." || "$file" == ".." || "$file" == ".git" ]]; then
    continue
  fi
  ln -s ${PWD}/${file} ~/
done
