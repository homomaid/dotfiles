" 対応括弧の補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap <> <><Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>

" ノーマルモードでの : と ; の置換
nnoremap ; :

" カーソル移動
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
vnoremap j gj
vnoremap k gk
vnoremap gj j
vnoremap gk k
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" インクリメント/デクリメント
nnoremap + <C-a>
nnoremap - <C-x>
vnoremap + g<C-a>
vnoremap - g<C-x>

" 行末まで選択
vnoremap v $h

" 無効化
noremap <C-q> <Nop>
noremap <F1> <Nop>
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>
vnoremap <Left> <Nop>
vnoremap <Down> <Nop>
vnoremap <Up> <Nop>
vnoremap <Right> <Nop>
cnoremap <Left> <Nop>
cnoremap <Down> <Nop>
cnoremap <Up> <Nop>
cnoremap <Right> <Nop>
if !has('gui')
    inoremap <Left> <Nop>
    inoremap <Down> <Nop>
    inoremap <Up> <Nop>
    inoremap <Right> <Nop>
endif

" 貼り付け
set pastetoggle=<C-y>

" Neovim (C-h)
" https://github.com/neovim/neovim/issues/2048
if has('nvim')
  nmap <BS> <C-w>h
endif
