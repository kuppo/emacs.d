;; Default coding system
(set-default-coding-systems 'utf-8)

;; A function could easily set font from the font list, both for English and Chinese.
;; Thanks @强者 (see http://zhuoqiang.me/torture-emacs.html)

(defun c-font-existsp (font)            ;see if the font exists.
  (if (null (x-list-fonts font))
      nil
    t))

(require 'cl)
(defun c-set-font (english-fonts        ;set the font function.
                       english-font-size
                       chinese-fonts
                       &optional chinese-font-size)
  (let ((en-font (format "%s %s"
                         (find-if #'c-font-existsp english-fonts)
                         english-font-size))
        (zh-font (find-if #'c-font-existsp chinese-fonts)))

    ;; Set the default English font
    ;;
    ;; The following 2 method cannot make the font settig work in new frames.
    ;; (set-default-font "Consolas:pixelsize=18")
    ;; (add-to-list 'default-frame-alist '(font . "Consolas:pixelsize=18"))
    ;; We have to use set-face-attribute
     (set-face-attribute 'default nil :font en-font)

    ;; Set Chinese font
    ;; Do not use 'unicode charset, it will cause the English font setting invalid
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset (font-spec :family zh-font)))))

;; English font list
(defvar c-en-list '("Consolas" "Hack" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New"))

;; Chinese font list
(defvar c-ch-list '("Microsoft Yahei" "Microsoft JhengHei" "文泉驿等宽微米黑" "黑体" "新宋体" "宋体"))

;; Set proper font from above list
(c-set-font c-en-list 12 c-ch-list)

;; Chinese font needs to rescale
(setq face-font-rescale-alist '(("Microsoft Yahei" . 1.2)
                                ("Microsoft JhengHei" . 1.2)
                                ("STKaiti" . 1.2)
                                ("KaiTi" . 1.2)))


(provide 'init-fonts)
;;; init-fonts.el ends here

