;; go-mode
(require 'go-mode)
(require 'golint)
(use-package go-mode)

(add-hook 'before-save-hook 'gofmt-before-save)
(setq gofmt-command "gofumports")

(lsp-register-custom-settings
 '(("gopls.completeUnimported" t t)
   ("gopls.staticcheck" t t)
   ("gopls.completeUnimported" t t)
   ))

;; Optional - provides snippet support.
(use-package yasnippet
  :ensure t
  :commands yas-minor-mode
  :hook (go-mode . yas-minor-mode))
