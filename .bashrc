export PATH="/usr/bin:$PATH"
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ff='fastfetch'
alias nf='neofetch'
alias sudo='sudo-rs'
# uu Coreutils
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
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias nv='nvim'
alias crr='cargo run --release'
alias cbr='cargo build --release'
alias sss='systemctl suspend ; exit'
alias letscook='echo performance | sudo tee /sys/firmware/acpi/platform_profile'
alias nuts='echo quiet | sudo tee /sys/firmware/acpi/platform_profile'

# PTYHON
alias pyton='python'
alias pyhtin='python'
alias pyhtoin='python'
alias pyhion='python'
# пропущена буква
alias pyhon='python'
alias pythn='python'
alias pytho='python'
alias ython='python'
alias pthon='python'
# перестановки
alias pyhton='python'
alias pytohn='python'
alias pyothn='python'
alias pythno='python'
alias phyton='python'
alias pyhnot='python'
alias pyhont='python'
# лишняя буква
alias pythonn='python'
alias pyython='python'
alias ppython='python'
alias pytton='python'
alias pythhon='python'
alias pythoon='python'
alias pythons='python'
alias pythone='python'
# соседние клавиши
alias pithon='python'
alias puthon='python'
alias pytjon='python'
alias pytgon='python'
alias pytnon='python'
alias pytmon='python'
alias pythin='python'
alias pythom='python'
alias pythob='python'
alias pythpn='python'
# совсем жизненные опечатки
alias pytoin='python'
alias pyhoin='python'
alias pytohin='python'
alias pyhiton='python'
alias pyhtno='python'
alias pyhnto='python'

alias vim='nvim'
take() {
    mkdir -p "$1" && cd "$1"
}
# colors
if [ -x /usr/bin/uu-dircolors ]; then
    test -r ~/.dircolors && eval "$(uu-dircolors -b ~/.dircolors)" || eval "$(uu-dircolors -b)"
fi

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

# opencode
export PATH=/home/impostorboy/.opencode/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export QT_QPA_PLATFORM=xcb # fix VirtualBox keyboard on Sway/Wayland
export PATH="$HOME/.cargo/bin:$PATH"
