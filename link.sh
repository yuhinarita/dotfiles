#!/bin/sh

cd ~/dotfiles
for file in .*; do
  if [[ "$file" == "." || "$file" == ".." || "$file" == ".git" ]]; then
    continue
  fi
  ln -sf ${PWD}/${file} ~/
  vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"
done
