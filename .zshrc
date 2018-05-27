export TERM=xterm-256color

# alias
alias la='ls -al'
alias ll='ls -l'

# PATH
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

if [ -e ~/.cask/bin ]; then
    export PATH=$PATH:~/.cask/bin
fi

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# PROMPT
get_pwd() {
    echo ${PWD/$HOME/"~"}
}

autoload -Uz colors
colors

_zsh_prompt() {
    PROMPT=$'\n\x1b[38;2;255;255;255m\x1b[48;2;204;119;51m %m \x1b[48;2;136;153;85m'" $(basename $(get_pwd)) "$'\x1b[48;2;126;128;233m $ \x1b[0m '
    zle && zle reset-prompt
}

zle -N zle-line-init _zsh_prompt
zle -N zle-line-finish _zsh_prompt

