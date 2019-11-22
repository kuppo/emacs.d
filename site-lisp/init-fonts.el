;;; package --- Summary

;;; Commentary

;;; Code:
;; Default coding system
(set-default-coding-systems 'utf-8)

;; Set font size
;(let ((font-size 12)
                                        ;      (cn-font-scale 1.2)))
(setq font-size 12)
(setq cn-font-scale 1.2)

(when (display-graphic-p)
  ;; Set default font
  (catch 'loop
    (dolist (font '("Consolas" "Hack" "Monaco" "DejaVu Sans Mono"
                    "Monospace" "Courier New"))
      (when (member font (font-family-list))
        (set-face-attribute 'default nil :font font :height (* 10 font-size))
        (throw 'loop t))))

  ;; Specify font for all unicode characters
  (catch 'loop
    (dolist (font '("Symbola" "Apple Symbols" "Symbol"))
      (when (member font (font-family-list))
        (set-fontset-font t 'unicode font nil 'prepend)
        (throw 'loop t))))

  ;; Specify font for Chinese characters
  (catch 'loop
    (dolist (font '("Microsoft Yahei" "Microsoft JhengHei"
                    "文泉驿等宽微米黑" "黑体" "新宋体" "宋体"))
      (when (member font (font-family-list))
        (set-fontset-font t '(#x4e00 . #x9fff) font)
        (throw 'loop t)))))

;; Chinese font needs to rescale
(setq face-font-rescale-alist '(("Microsoft Yahei" . 1.8)
                                ("Microsoft JhengHei" . 1.8)
                                ("STKaiti" . 1.8)
                                ("KaiTi" . 1.8)))


(provide 'init-fonts)
;;; init-fonts.el ends here
