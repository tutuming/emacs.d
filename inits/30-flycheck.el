;;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(custom-set-variables
   '(flycheck-navigation-minimum-level 'error))
