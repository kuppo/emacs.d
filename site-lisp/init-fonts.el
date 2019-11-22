;; Default font
;; (set-default-font "Hack 10")
;; (set-default-font "Consolas 11")

;; Chinese font
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 10))

;; Chinese font needs to rescale
(setq face-font-rescale-alist '(("Sarasa Gothic" . 1.6)
                                ("Microsoft Yahei" . 1.6)
                                ("Microsoft JhengHei" . 1.6)
                                ("STKaiti" . 1.6)
                                ("KaiTi" . 1.6)
                                ))


(provide 'init-fonts)
