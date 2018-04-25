THIS_DIR=$(cd $(dirname $0); pwd)

# Deploy
## Soft link
cd $THIS_DIR
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".config"] && continue

    ln -snfv ~/dotfiles/"$f" ~/
done

cd .config
for f in *; do
    ln -snfv ~/dotfiles/.config/"$f" ~/.config/
done

# Initialise
## Install Dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm installer.sh

## Install Cask
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

## Install base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
