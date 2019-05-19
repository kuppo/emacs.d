;; yasnippet
(use-package yasnippet
  :init
  )

;; company-web
(use-package company-web
  :init
  )

;; web-mode
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))

  (defun my-web-mode-hook ()
    "Hooks for Web mode."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (set (make-local-variable 'company-backends) '(company-css company-web-html company-yasnippet company-files))
    )
  (add-hook 'web-mode-hook  'my-web-mode-hook)

  (setq web-mode-enable-current-column-highlight t)
  (setq web-mode-enable-current-element-highlight t))

;; emmet
(use-package emmet-mode
  :hook
  (web-mode)

  :config
  (add-hook 'web-mode-before-auto-complete-hooks ;; Use different complete hooks in different sections of the same buffer
            '(lambda ()
               (let ((web-mode-cur-language
                      (web-mode-language-at-pos)))
                 (if (string= web-mode-cur-language "php")
                     (yas-activate-extra-mode 'php-mode)
                   (yas-deactivate-extra-mode 'php-mode))
                 (if (string= web-mode-cur-language "css")
                     (setq emmet-use-css-transform t)
                   (setq emmet-use-css-transform nil))))))

(provide 'init-webmode)
