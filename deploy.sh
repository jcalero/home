#!/bin/bash
B="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


## Shell config
ln -sfv $B/shell/.bash_profile ~/.bash_profile
ln -sfv $B/shell/.bashrc ~/.bashrc
ln -sfv $B/shell/.bash_aliases ~/.bash_aliases
ln -sfv $B/shell/.bash_prompt ~/.bash_prompt


## Git scripts
ln -sfv $B/git/.gitconfig ~/.gitconfig
ln -sfv $B/git/.gitignore ~/.gitignore


## Custom scripts
mkdir -p ~/scripts
ln -sfv $B/scripts/gitcleanup.sh ~/scripts/


## PhpStorm 8
if [ -d ~/.WebIde80 ]; then
  if [ -d ~/.WebIde80/config ]; then
    mv ~/.WebIde80/config ~/.WebIde80/config-backup
  fi
  ln -sfv $B/phpstorm8/config ~/.WebIde80/
fi


## Git aware prompt
mkdir -p ~/.bash
cd ~/.bash
if [ ! -d git-aware-prompt ]; then
  git clone https://github.com/jimeh/git-aware-prompt
fi