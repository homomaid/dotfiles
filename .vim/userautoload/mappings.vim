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
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-d> <Right>

" インクリメント/デクリメント
nnoremap + <C-a>
nnoremap - <C-x>

" 行末まで選択
vnoremap v $h

" 無効化
nnoremap q <Nop>
nnoremap <F1> <Nop>
inoremap <F1> <Nop>

" 貼り付け
set pastetoggle=<C-y>

" Neovim (C-h)
" https://github.com/neovim/neovim/issues/2048
if has('nvim')
  nmap <BS> <C-w>h
endif
