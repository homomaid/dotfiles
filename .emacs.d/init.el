;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
 '(custom-safe-themes
   (quote
    ("16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "f7398daff4c501e95c2f716a2e8faddddfa5f19548888b4afdf6a2250bf91929" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "f869a5d068a371532c82027cdf1feefdc5768757c78c48a7e0177e90651503ad" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" default)))
 '(package-selected-packages
   (quote
    (base16-theme yatex web-mode web-beautify volatile-highlights use-package smooth-scrolling smex smartparens rust-mode quickrun projectile-rails prodigy popwin php-mode pallet osx-dictionary osx-clipboard nyan-mode neotree multiple-cursors moe-theme markdown-mode magit java-snippets imenu-list idle-highlight-mode htmlize helm-rb helm-rails helm-c-yasnippet helm-ag haml-mode flymake-ruby flymake-coffee flycheck-cask expand-region exec-path-from-shell drag-stuff csharp-mode company-web company-inf-ruby coffee-mode bison-mode auto-save-buffers-enhanced))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
