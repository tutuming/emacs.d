;; key bindings
(define-key global-map (kbd "C-c C-l") 'goto-line)
(define-key global-map (kbd "C-c a") 'align-regexp)
(define-key global-map (kbd "C-c C-g") 'ag)
(define-key global-map (kbd "C-c C-q") 'quickrun)
(define-key global-map (kbd "C-c o") 'open-current-dir-with-finder)
(define-key global-map (kbd "C-\\") 'flycheck-next-error)

(global-unset-key "\C-t")
(put 'set-goal-column 'disabled nil)

(global-set-key [f9] 'linum-mode)

(global-set-key (kbd "C-'") 'er/expand-region) ;; リージョンを展開
(global-set-key (kbd "C-\"") 'er/contract-region) ;; リージョンを狭める

(global-set-key (kbd "C-c C-x") 'eval-and-replace)
(global-set-key (kbd "C-c C-i") 'helm-imenu)

(add-hook 'isearch-mode-end-hook 'my-goto-match-beginning)

(defun my-goto-match-beginning ()
  (when (and isearch-forward isearch-other-end)
    (goto-char isearch-other-end)))
(defadvice isearch-exit (after my-goto-match-beginning activate)
  "Go to beginning of match."
  (when (and isearch-forward isearch-other-end)
    (goto-char isearch-other-end)))
