(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-x\C-g" 'goto-line)
(global-set-key "\C-cc" 'org-capture)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f11] 'package-list-packages)
(global-set-key [f12] 'eval-buffer)

;; Disable make backup file
(setq make-backup-files nil)

;; Disable auto save
(setq auto-save-default nil)

(setq c-auto-newline t)

;; 日本語の設定（UTF-8）
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;; バックアップファイルを作らないようにする
(setq make-backup-files nil)

;; 括弧の対応関係をハイライト表示
(show-paren-mode nil)

;; ツールバーを表示しないようにする（Official Emacs の場合は 0）
(if window-system
    (tool-bar-mode 0))

;; メニューバーを表示しないようにする
(menu-bar-mode -1)

;; スタートアップ画面を表示しないようにする
(setq inhibit-startup-message t)

;; 行間隔を少し広げる
(set-default 'line-spacing 5)

;; ウィンドウ（フレーム）のサイズ設定する
(setq default-frame-alist
      '((width . 120) (height . 36)))

;; マウス・スクロールを滑らかにする（Mac Emacs 専用）
(setq mac-mouse-wheel-smooth-scroll t)

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; 列数を表示する
(column-number-mode t)

;; 行数を表示する
(global-linum-mode t)

;; カーソルの点滅をやめる
(blink-cursor-mode 0)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; Mac の option をメタキーにする
(setq mac-option-modifier 'meta)

;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)

;; neotree でファイルを新規作成した後、自動的にファイルを開く
(setq neo-create-file-auto-open t)

;; neotree キーバインドをシンプルにする
(setq neo-keymap-style 'concise)

;; neotree ウィンドウを表示する毎に current file のあるディレクトリを表示する
(setq neo-smart-open t)

;; モードラインに行番号表示
(line-number-mode t)

;; モードラインに列番号表示
(column-number-mode t)

;;通常のウィンドウ用の設定
(setq-default truncate-lines t)

;;ウィンドウを左右に分割したとき用の設定
(setq-default truncate-partial-width-windows t)

;; 行番号表示
(global-linum-mode 1)
(setq linum-format "%4d ")
