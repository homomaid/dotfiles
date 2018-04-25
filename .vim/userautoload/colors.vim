syntax on
set background=dark

try
  colorscheme base16-ocean
  highlight Normal ctermbg=NONE
  highlight LineNr ctermfg=8
  highlight CursorLineNr term=bold cterm=NONE ctermfg=8 ctermbg=NONE
  highlight clear CursorLine
catch
  colorscheme desert
endtry
