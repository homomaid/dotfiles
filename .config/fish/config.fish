set fish_term24bit 1
set -x TERM xterm-256color

source ~/.config/fish/autoload/*.fish

# Base16 Shell
if status --is-interactive
   eval sh $HOME/.config/base16-shell/scripts/base16-ocean.sh
end
