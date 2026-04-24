#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ff='fastfetch'
alias nf='neofetch'
alias sudo='sudo-rs'
# === UU Coreutils ===
alias ls='uu-ls --color=auto -a'
alias cat='uu-cat'
alias cp='uu-cp'
alias mv='uu-mv'
alias rm='uu-rm'
alias mkdir='uu-mkdir'
alias rmdir='uu-rmdir'
alias touch='uu-touch'
alias ln='uu-ln'
alias chmod='uu-chmod'
alias chown='uu-chown'
alias grep='grep --color=auto'  # grep не из uutils, оставляем стандартный
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# Цвета для bash
if [ -x /usr/bin/uu-dircolors ]; then
    test -r ~/.dircolors && eval "$(uu-dircolors -b ~/.dircolors)" || eval "$(uu-dircolors -b)"
fi
# === 💀 DEMON .bashrc ===

# цвета
RED="\[\e[31m\]"
CYAN="\[\e[36m\]"
GRAY="\[\e[90m\]"
RESET="\[\e[0m\]"

# prompt как в zsh
PS1="${RED}\u${RESET} ${CYAN}\w${RESET} 💀 "

# алиасы
alias ll='uu-ls -lah --color=auto'
alias la='uu-ls -A --color=auto'
alias l='uu-ls -CF --color=auto'

# история
HISTCONTROL=ignoredups:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND="history -a; history -n"

# автодополнение
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$PATH"

export PATH="/opt/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/opt/cuda/lib64:$LD_LIBRARY_PATH"
export CUDA_HOME="/opt/cuda"


export PATH=$PATH:$(go env GOPATH)/bin


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/impostorboy/.lmstudio/bin"
# End of LM Studio CLI section
