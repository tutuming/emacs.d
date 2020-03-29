;; multiple-cursors
(require 'multiple-cursors)

 (global-set-key (kbd "C-j") 'mc/edit-lines)
;; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;;(global-set-key (kbd "C-.") 'mc/mark-all-like-this)
(global-set-key (kbd "C-.") 'mc/mark-all-words-like-this)
