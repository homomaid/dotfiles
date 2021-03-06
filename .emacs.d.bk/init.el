(require 'package)

(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

;; @ Cask
(require 'cask "~/.cask/cask.el" t)
(cask-initialize)

;; @ load-theme
(setq base16-theme-256-color-source "base16-shell")
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
    (matlab-mode base16-theme yatex web-mode web-beautify volatile-highlights use-package smooth-scrolling smex smartparens rust-mode quickrun projectile-rails prodigy popwin php-mode pallet osx-dictionary osx-clipboard nyan-mode neotree multiple-cursors moe-theme markdown-vmode magit java-snippets imenu-list idle-highlight-mode htmlize helm-rb helm-rails helm-c-yasnippet helm-ag haml-mode flymake-ruby flymake-coffee flycheck-cask expand-region exec-path-from-shell drag-stuff csharp-mode company-web company-inf-ruby coffee-mode bison-mode auto-save-buffers-enhanced))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
