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
