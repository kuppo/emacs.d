;; Default font
(set-default-font "Consolas 11")

;; Chinese font
(set-fontset-font t 'han (font-spec :family "Sarasa Gothic SC" :size 11))

;; Chinese font needs to rescale
(setq face-font-rescale-alist '(("Sarasa Gothic" . 1.5)))


(provide 'init-fonts)
