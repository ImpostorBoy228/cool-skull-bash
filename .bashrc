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
alias mingle='echo balanced | sudo tee /sys/firmware/acpi/platform_profile'
alias nuts='echo quiet | sudo tee /sys/firmware/acpi/platform_profile'
alias world='sudo emerge -avuDN @world'

alias py='python'

alias ll='uu-ls -lah --color=auto'
alias la='uu-ls -A --color=auto'
alias l='uu-ls -CF --color=auto'
alias fastfetch='fastfetch --disable-linewrap true'

alias vim='nvim'

take() {
    mkdir -p "$1" && cd "$1"
}

audio_reload() {
    systemctl --user stop pipewire wireplumber pipewire-pulse
    sudo modprobe -r snd_hda_intel && sudo modprobe snd_hda_intel
    systemctl --user start pipewire wireplumber pipewire-pulse
}

# colors
if [ -x /usr/bin/uu-dircolors ]; then
    test -r ~/.dircolors && eval "$(uu-dircolors -b ~/.dircolors)" || eval "$(uu-dircolors -b)"
fi
RED="\[\e[31m\]"
CYAN="\[\e[36m\]"
GRAY="\[\e[90m\]"
RESET="\[\e[0m\]"
TWSIX="\[\e[38;5;169m\]"
HTWINE="\[\e[38;5;108m\]"

PS1="${TWSIX}\u${RESET} ${HTWINE}\W${RESET} 💀 "

HISTCONTROL=ignoredups:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND="history -a; history -n"

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

export PATH=/home/impostorboy/.opencode/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
. "$HOME/.cargo/env"
