#!/bin/bash
if [ ! -d "$HOME/apt-vim" ]
  then
    tput setaf 2 && echo 'Starting apt-vim install...'
    curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
fi
