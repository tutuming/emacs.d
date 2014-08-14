;; theme
(require 'sublime-themes)
(load-theme 'spolsky t)

;; 行番号のとこ太すぎるので細く
(custom-theme-set-variables
  'spolsky
  '(linum-format " %3i "))
