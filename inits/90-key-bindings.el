;; key bindings
(define-key global-map (kbd "C-c a") 'align-regexp)
(define-key global-map (kbd "C-c C-g") 'moccur-grep-find)
(define-key global-map (kbd "C-c C-q") 'quickrun)
(define-key global-map (kbd "C-c o") 'open-current-dir-with-finder)
(define-key global-map (kbd "C-\\") 'flymake-goto-next-error)
(global-unset-key "\C-t")
(put 'set-goal-column 'disabled nil)

(global-set-key [f9] 'linum-mode)

(global-set-key (kbd "C-'") 'er/expand-region) ;; リージョンを展開
(global-set-key (kbd "C-\"") 'er/contract-region) ;; リージョンを狭める

(global-set-key (kbd "C-;") 'auto-complete) ;;補完

(global-set-key (kbd "C-c C-x") 'eval-and-replace)

(global-set-key (kbd "C-c C-i") 'helm-imenu)
