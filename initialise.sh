# Initialise
## Install Dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm installer.sh

## Install Cask
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

## Install Spacemacs
git clone https://github.com/syl2bnr/spacemacs ~/.emacs.d
