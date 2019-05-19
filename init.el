;; Repo mirrors from China
(setq package-archives '(("gnu"       . "https://elpa.emacs-china.org/gnu/")
                         ("melpa"     . "https://elpa.emacs-china.org/melpa/")
                         ("org"       . "https://elpa.emacs-china.org/org/")
                         ("marmalade" . "https://elpa.emacs-china.org/marmalade/")
                         ("sunrise"   . "https://elpa.emacs-china.org/sunrise-commander/")
                         ("user42"    . "https://elpa.emacs-china.org/user42/")))

;; Initialize package repos.
(unless (bound-and-true-p package--initialized)
  (setq package-enable-at-startup nil)
  (package-initialize))

;; Refresh packages list
(when (not package-archive-contents)
  (package-refresh-contents))

;; Make sure we installed use-package.
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; Better package manager method.
(require 'use-package)
(setq use-package-always-ensure t)

;; Add the emacs lisp snippets for load variant functionalities.
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; Basic configurations along with some personal preferences, change it if you
;; don't like it.
;; DO NOT COMMENT IT
(require 'init-general)

;; Auto update packages if available.
(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auto-package-update elpy py-autopep8 emmet-mode web-mode company-web yasnippet flycheck use-package)))
 '(python-shell-interpreter "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
