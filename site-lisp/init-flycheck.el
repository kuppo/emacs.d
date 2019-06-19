(use-package flycheck
  :delight
  (flycheck-mode " FC")
  :commands use-package
  :hook
  (after-init . global-flycheck-mode)
  :init
  (setq flycheck-indication-mode 'right-fringe)
  (setq flycheck-emacs-lisp-load-path 'inherit)

  ;; Only check while save and open files, minimize the impact to slow
  ;; system
  (setq flycheck-check-syntax-automatically '(save mode-enabled))

  ;; Display Flycheck errors in GUI tooltips
  (if (display-graphic-p)
      (if (>= emacs-major-version 26)
          (use-package flycheck-posframe
            :hook (flycheck-mode . flycheck-posframe-mode)
            :config (add-to-list 'flycheck-posframe-inhibit-functions
                                 #'(lambda () (bound-and-true-p company-backend))))
        (use-package flycheck-pos-tip
          :defines flycheck-pos-tip-timeout
          :hook (global-flycheck-mode . flycheck-pos-tip-mode)
          :config (setq flycheck-pos-tip-timeout 30)))
    (use-package flycheck-popup-tip
      :hook (flycheck-mode . flycheck-popup-tip-mode))))

(provide 'init-flycheck)
;;; init-flycheck ends here
