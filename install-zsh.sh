#!/bin/bash
if [ -z "$ZSH" ]; then
  tput setaf 2 && echo 'Starting oh-my-zsh install...'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
