;; coffee script
(require 'coffee-mode)

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2)
  (setq coffee-tab-width 2)
  (define-key coffee-mode-map "\C-c\C-c" 'coffee-compile-region) )

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; coffee flymake
(require 'flymake-coffee)
(add-hook 'coffee-mode-hook 'flymake-coffee-load)
(setq flymake-coffee-coffeelint-configuration-file
      (expand-file-name "/Users/tutuming/.coffeelint-config.json"))

(add-to-list 'ac-modes 'coffee-mode)
