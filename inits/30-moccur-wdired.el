;; moccur
(require 'color-moccur)
(require 'moccur-edit)

;; wgrep
(require 'wgrep nil t)

;; wdired の設定
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
