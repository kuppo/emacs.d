;; Restart emacs, make you configuring emacs a lot easier. it only have one
;; command `restart-emacs`.
;; with a single universal-argument (C-u) Emacs is restarted with --debug-init flag
;; with two universal-argument (C-u C-u) Emacs is restarted with -Q flag
;; with three universal-argument (C-u C-u C-u) the user is prompted for the arguments
(use-package restart-emacs)

;; Show line number
(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (linum-mode 1))

;; Show column number
(column-number-mode 1)

;; Save cursor position accross sessions
(if (version< emacs-version "25.0")
    (progn
      (require 'saveplace)
      (setq-default save-place t))
  (save-place-mode t))

;; lambda
(global-prettify-symbols-mode t)

;; No tool bar if in window system
(if window-system
    (tool-bar-mode -1))

;; No scroll bar if in window system
(if window-system
    (scroll-bar-mode -1))

;; No menu bar
(menu-bar-mode -1)

;; Show day time in status bar
(display-time-mode 1)

;; Show file size and approximate position
(size-indication-mode 1)

;; Maximize window after start up(only usefuel in window system)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Show extra trailing whitespaces
(setq show-trailing-whitespace t)

;; Show parenthesis pairs
(progn
  (show-paren-mode 1)
  (setq show-paren-style 'mixed) )

;; Insert parenthesis as pairs
;; (electric-pair-mode 1)
;; (setq electric-pair-pairs ; Pairs you want to affected all the time.
;;       '(
;;         (?\" . ?\")
;;         (?\{ . ?\})
;;         (?\( . ?\))
;;         (?\' . ?\')
;;         (?\‘ . ?\’)
;;         (?\“ . ?\”)
;;         (?\《 . ?\》)
;;         (?\[ . ?\])
;;         (?\< . ?\>)
;;         (?\` . ?\`)
;;         (?\「 . ?\」)))

;; Delete extra trailing whitespaces before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Some opetimization for emacs startup
(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; Add diminish and delight support
(use-package delight)
(use-package diminish)

;; Change the default mode bar behavious.
(use-package emacs
  :delight
  (auto-fill-function " AF")
  (visual-line-mode)    ;; Hide visual line mode string
  (eldoc-mode)         ;; Hide eldoc mode string

  :bind
  ("S-C-<left>" . shrink-window-horizontally)
  ("S-C-<right>" . enlarge-window-horizontally)
  ("S-C-<down>" . shrink-window)
  ("S-C-<up>" . enlarge-window))


(provide 'init-general)
