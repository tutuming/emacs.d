;; yaml-mode

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(defconst yaml-comment-re "\\(#.*\\)")
