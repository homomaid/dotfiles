# TERM
export TERM=xterm-256color

# alias
## for ls options
alias la='ls -al'
alias ll='ls -l'

## emacsclient
alias emacs='emacsclient -nw -a "" $argv 2> /dev/null'
alias ekill='emacsclient -e "(kill-emacs)"'

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
    local white=$'\x1b[38;2;255;255;255m'
    local hostname=$'\x1b[48;2;204;119;51m %m '
    local dirname=$'\x1b[48;2;136;153;85m'" $(basename $(get_pwd)) "
    local dollar=$'\x1b[48;2;126;128;233m $ '
    local reset=$'\x1b[0m '

    PS1=$'\n'$white$hostname$dirname$dollar$reset

    zle && zle reset-prompt
}

zle -N zle-line-init _zsh_prompt
zle -N zle-line-finish _zsh_prompt

function gitignore() { curl -L -s https://www.gitignore.io/api/$@ ;}
