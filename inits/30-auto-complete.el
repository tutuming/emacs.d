;;autocomplete
(require 'auto-complete-config)
;;(add-to-list 'ac-modes 'coffee-mode)
;;(add-to-list 'ac-modes 'motion-mode)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ac-use-menu-map t)
