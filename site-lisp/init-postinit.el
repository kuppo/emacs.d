;; Open file in view mode
(add-hook 'after-init-hook
          (add-hook 'find-file-hook
                    (lambda () (view-mode t)))

          ;; Set default directory to home
          (setq default-directory "~/"))


(provide 'init-postinit)
;;; init-postinit.el ends here
