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

(require 'use-package)
(setq use-package-always-ensure t)

;; Auto update packages if available.
(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(provide 'init-packages)
