function create_tex_templete
    git clone https://github.com/homomaid/TeXTemplete.git ./$argv
    cd $argv
    rm -rf .git README.md
    git init
    gitignore LaTeX macOS Linux > .gitignore
end
