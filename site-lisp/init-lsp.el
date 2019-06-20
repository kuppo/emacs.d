(use-package lsp-mode
  :hook prog-mode)

(use-package lsp-ui
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-sideline-ignore-duplicate t))

(use-package company-lsp
  :commands company-lsp
  :config
  (push 'company-lsp company-backends)
  (setq company-lsp-async t
        company-lsp-cache-candidates 'auto
        company-enable-recompletion t))

(use-package pyvenv
  :hook python-mode)


(provide 'init-lsp)
