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
