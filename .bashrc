#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# Цвета для bash
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
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
alias ll='ls -lh --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# история
HISTCONTROL=ignoredups:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

# автодополнение
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
