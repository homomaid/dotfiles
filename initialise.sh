# Initialise
## Install Dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm installer.sh

## Install Cask
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

## Install base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
