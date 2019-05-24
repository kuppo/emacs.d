(use-package swiper)

(use-package counsel
  :diminish
  counsel-mode
  ivy-mode

  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-use-selectable-prompt t)
  (setq ivy-initial-inputs-alist nil)

  :bind
  (("C-s" . swiper)
   ("C-h f" . counsel-describe-function)
   ("C-h v" . counsel-describe-variable))

  :hook
  ((after-init . ivy-mode)
   (ivy-mode . counsel-mode)
   ))

(provide 'init-ivy)
