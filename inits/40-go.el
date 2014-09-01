;; go mode
(require 'go-mode)

(require 'go-autocomplete)
(add-hook 'go-mode-hook
          '(lambda()
            (setq c-basic-offset 2)
            (setq indent-tabs-mode t)
            (local-set-key (kbd "M-.") 'godef-jump)
            (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c i") 'go-goto-imports)
            (local-set-key (kbd "C-c d") 'godoc)
            (setq gofmt-command "goimports")
            ))

(add-hook 'before-save-hook 'gofmt-before-save)

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(add-to-list 'load-path "~/go-packages/src/github.com/golang/lint/misc/emacs")
(require 'golint)

(load "~/go-packages/src/code.google.com/p/go.tools/cmd/oracle/oracle.el")
(add-hook 'go-mode-hook 'go-oracle-mode)

(add-to-list 'load-path "~/go-packages/src/github.com/dougm/goflymake")
(require 'go-flymake)
