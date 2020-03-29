;; 分割
(setq split-height-threshold nil)
(setq split-width-threshold 300)

;; 起動時左右分割
(setq w (selected-window))
(setq w2 (split-window w nil t))

;;; window
(set-background-color "black")

(if window-system
    (progn
      (setq initial-frame-alist
            '((top . 1) (left . 1) (width . 200) (height . 60)))

      (set-frame-parameter nil 'alpha 95)
      (setq-default line-spacing 3)
      (setq mac-allow-anti-aliasing t)
      (defun my-bell-function ()
        (unless (memq this-command
                      '(isearch-abort abort-recursive-edit exit-minibuffer
                                      keyboard-quit mwheel-scroll down up next-line previous-line
                                      backward-char forward-char))
          (ding)))
      (setq ring-bell-function 'my-bell-function)
      (when (>= emacs-major-version 23)
        (set-face-attribute 'default nil
                            :family "DejaVu Sans Mono"
                            :height 140)
        (set-fontset-font
         (frame-parameter nil 'font)
         'japanese-jisx0208
         '("Hiragino Kaku Gothic ProN" . "iso10646-1"))
        (set-fontset-font
         (frame-parameter nil 'font)
         'japanese-jisx0212
         '("Hiragino Kaku Gothic ProN" . "iso10646-1"))
        (set-fontset-font
         (frame-parameter nil 'font)
         'mule-unicode-0100-24ff
         '("Hiragino Kaku Gothic ProN" . "iso10646-1"))
        (setq face-font-rescale-alist
              '(("^-apple-hiragino.*" . 1.51)
                (".*osaka-bold.*" . 1.4)
                (".*osaka-medium.*" . 1.4)
                (".*courier-bold-.*-mac-roman" . 1.17)
                (".*monaco cy-bold-.*-mac-cyrillic" . 1.05)
                (".*monaco-bold-.*-mac-roman" . 1.04)
                ("-cdac$" . 1.4))))
      )
  )
