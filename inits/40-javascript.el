;; espresso-mode (used with js2-mode bellow)
 (require 'espresso)

 ;; js2-mode
 (require 'js2-mode)

 (add-to-list 'auto-mode-alist '("\\.js$" .  js2-mode))

(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-disabled-checkers '(javascript-jshint javascript-jscs))
    ))

(setq js2-include-browser-externs nil)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
(setq js2-highlight-external-variables nil)
(setq js2-include-jslint-globals nil)

(add-hook 'js-mode-hook #'js-auto-format-mode)
(add-hook 'js-mode-hook #'add-node-modules-path)
