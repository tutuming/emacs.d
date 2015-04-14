;; coffee script
(require 'coffee-mode)

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2)
  (setq coffee-tab-width 2)
  (define-key coffee-mode-map "\C-c\C-c" 'coffee-compile-region) )

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; coffee flycheck
(add-hook 'coffee-mode-hook
          `(lambda ()
             (setq flycheck-checker 'coffee)
             (flycheck-mode 1)))

(add-to-list 'ac-modes 'coffee-mode)
