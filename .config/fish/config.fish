set fish_term24bit 1
set -x TERM xterm-256color

for f in ~/.config/fish/autoload/*.fish
    source $f
end
