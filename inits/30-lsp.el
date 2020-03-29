(require 'lsp-mode)

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :custom ((lsp-inhibit-message t)
         (lsp-message-project-root-warning t)
         (create-lockfiles nil))
  :hook (go-mode . lsp-deferred))

;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Optional - provides fancier overlays.
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :config
  )
