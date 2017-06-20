;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

;; @ Cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;; @ load-theme
(setq base16-theme-use-shell-colors t)
(load-theme 'base16-ocean t)

(setq load-path
      (append '(
                "~/.emacs.d/conf"
                ) load-path))

(load "general")
(load "font")
(load "functions")
(load "plugins")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (tumblesocks yatex web-mode web-beautify volatile-highlights use-package smooth-scrolling smex smartparens rust-mode quickrun projectile-rails prodigy popwin php-mode pallet osx-dictionary osx-clipboard nyan-mode neotree multiple-cursors moe-theme markdown-mode magit java-snippets imenu-list idle-highlight-mode htmlize helm-rb helm-rails helm-c-yasnippet helm-ag haml-mode flymake-ruby flymake-coffee flycheck-cask expand-region exec-path-from-shell drag-stuff csharp-mode company-web company-inf-ruby coffee-mode bison-mode auto-save-buffers-enhanced))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
