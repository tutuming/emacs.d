;; go mode

(setq exec-path (append exec-path '("/Users/tutuming/go-packages/bin")))

(require 'go-mode)
(require 'go-autocomplete)

(add-hook 'go-mode-hook
          '(lambda()
             ;; flycheck golint with min_confidence
             (flycheck-define-checker go-golint-min
               "Golint に -min_confidence=0.9 を指定したlinter"
               :command ("golint" "-min_confidence=0.9" source)
               :error-patterns
               ((warning line-start (file-name) ":" line ":" column ": " (message) line-end))
               :modes go-mode
               :next-checkers (go-vet
                               ;; Fall back, if go-vet doesn't exist
                               go-build go-test go-errcheck))

             (add-to-list 'flycheck-checkers 'go-golint-min)
             (setq flycheck-check-syntax-automatically '(save
                                                         idle-change
                                                         mode-enabled))
             (setq c-basic-offset 2)
             (setq indent-tabs-mode t)
             (local-set-key (kbd "C-c C-j") 'godef-jump)
             (local-set-key (kbd "C-c C-c C-j") 'godef-jump-other-window)
             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
             (local-set-key (kbd "C-c i") 'go-goto-imports)
             (local-set-key (kbd "C-c f") 'go-goto-function-name)
             (local-set-key (kbd "C-c d") 'godoc)
             (setq gofmt-command "goreturns")

             ;; gocode
             (auto-complete-mode 1)
             ))

(add-hook 'before-save-hook 'gofmt-before-save)

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(add-to-list 'load-path "~/go-packages/src/github.com/golang/lint/misc/emacs")
(require 'golint)

(load "~/go-packages/src/golang.org/x/tools/cmd/guru/go-guru.el")

;; (add-to-list 'flycheck-checkers 'go-golint)
;; (add-to-list 'load-path "~/go-packages/src/github.com/dougm/goflymake")
;; (require 'go-flycheck)

;; err ハイライト
(font-lock-add-keywords
 'go-mode
 '(("\\b\\(err\\)\\b" 1 '((:foreground "LightSalmon2") (:weight bold)) t)))

(require 'go-rename)
(add-hook 'go-mode-hook
          (lambda () (local-set-key (kbd "C-c C-/") 'go-rename)))
