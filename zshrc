if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh

CASE_SENSITIVE="false"
DISABLE_AUTO_UPDATE="false"
export UPDATE_ZSH_DAYS=7
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_COMPDUMP="$ZSH_CACHE_DIR"
plugins=(git command-not-found common-aliases gradle zsh-autocomplete)

source $ZSH/oh-my-zsh.sh
source $HOME/.powerlevel10k/powerlevel10k.zsh-theme
# zsh-autcomplete
zstyle ':autocomplete:*' min-input 1 
zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select

export LANG=en_US.UTF-8
export EDITOR='vim'
eval $(thefuck --alias)

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$HOME/.vimpkg/bin
export PATH=$PATH:$HOME/bin
export PATH="/usr/local/sbin:$PATH"
. "$HOME/.cargo/env"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias mkcd='_(){ mkdir -p $1; cd $1; }; _'
alias rimraf='rm -rf'
alias home='cd ~'
alias key='ssh-add'
alias ls='lsd'
alias python='python3'
alias cat='bat --plain --pager never'
colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Load Angular CLI autocompletion.
if which ng >/dev/null 2>&1; then
  source <(ng completion script)
  export GPG_TTY=$(tty)
fi

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# stripe
fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i

#fnm
if which fnm >/dev/null 2>&1; then
  eval "$(fnm env --use-on-cd)"
fi

# gitkraken-cli
unalias gk

# include local zshrc for things that should not be shared O_O
if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi

# rbenv
if which rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - zsh)"
fi

# vitasdk
export VITASDK="$HOME/bin/vitasdk"
export PATH="$VITASDK/bin:$PATH"

# pyenv
if which pyenv >/dev/null 2>&1; then
  PATH=$(pyenv root)/shims:$PATH
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
