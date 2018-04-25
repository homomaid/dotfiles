"-------------------
" 一般
"-------------------
set encoding=utf-8
set fileencodings=utf-8,euc-jp,cp932,sjis
set hidden
set noshowmode
set noundofile
set noswapfile
set nobackup
set nowritebackup
set ttimeoutlen=100
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set virtualedit=block
set cindent
set title
set clipboard=unnamedplus,unnamed

" 行頭/行末からのカーソル移動を許可
set whichwrap=b,s,h,l,[,],<,>
" バックスペースを空白/行頭/行末で許可
set backspace=indent,eol,start


"-------------------
" 表示
"-------------------
filetype plugin indent on
set list
set scrolloff=3
set novisualbell
set number
set numberwidth=5
set showtabline=4
set laststatus=2
set ambiwidth=double
set nowrap

" 不可視文字の指定
set listchars=tab:▸\

" 区切り文字の指定
set fillchars+=vert:\


"-------------------
" 検索
"-------------------
set ignorecase
set smartcase
set wrapscan
set hlsearch


"-------------------
" autocmd
"-------------------
augroup vimrc
  autocmd!
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  autocmd InsertLeave * setlocal nopaste
  autocmd CmdwinEnter * nnoremap <CR> <CR>
  autocmd BufReadPost quickfix nnoremap <CR> <CR>
  autocmd BufNewFile,BufRead *.tag setlocal filetype=html
  autocmd QuickFixCmdPost *grep* cwindow
  autocmd WinLeave,TabLeave * call anzu#clear_search_status()
augroup END

augroup CursorLine
  autocmd!
  autocmd WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave,VimEnter * setlocal nocursorline
augroup END
