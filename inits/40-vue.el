(use-package vue-mode
  :mode (("\\vue\\'" . vue-mode))
  :config
  (progn
    (add-hook 'vue-mode-hook #'add-node-modules-path)
    (add-hook 'vue-mode-hook #'prettier-js-mode)))
