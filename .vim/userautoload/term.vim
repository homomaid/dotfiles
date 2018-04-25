" 起動時タイトル文字列保存
let &t_ti .= "\e[22;0t"
" 終了時タイトル文字列復元
let &t_te .= "\e[23;0t"

" 斜体
let &t_ZH = "\e[3m"
let &t_ZR = "\e[23m"
