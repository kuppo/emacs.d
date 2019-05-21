;; Add the emacs lisp snippets for load variant functionalities.
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; Initialize package
(require 'init-packages)

;; Basic configurations along with some personal preferences, change it if you
;; don't like it.
;; DO NOT COMMENT IT
(require 'init-general)

;; Initialize ivy
(require 'init-ivy)

;; Initialize lsp-mod
(require 'init-lsp)

;; Initialize webmode
(require 'init-webmode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (counsel swiper auto-package-update elpy py-autopep8 emmet-mode web-mode company-web yasnippet flycheck use-package)))
 '(python-shell-interpreter "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
