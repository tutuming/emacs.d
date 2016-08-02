;; helm
(require 'helm-config)
(require 'helm-git-files)
(require 'helm-ag)

(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-thing-at-point 'word)

(define-key global-map (kbd "C-x C-b") 'helm-for-files)

(define-key global-map (kbd "C-x C-y") 'helm-show-kill-ring)

(define-key global-map (kbd "C-x C-g") 'helm-ag)

(setq helm-for-files-preferred-list
      '(helm-git-files:all-source
        helm-source-buffers-list
        helm-source-files-in-current-dir
        helm-source-recentf
        ))

(setq helm-buffer-details-flag nil)
;; helm-follow-mode （C-c C-f で ON/OFF）の前回の状態を維持する
(setq helm-follow-mode-persistent t)
;; ミニバッファで C-k 入力時にカーソル以降を削除する（C-u C-k でも同様の動きをする）
(setq helm-delete-minibuffer-contents-from-point t)

(setq helm-display-function
      (lambda (buf)
        (other-window 1)
        (switch-to-buffer buf)))

;; (defun my/helm-exit-minibuffer ()
;;   (interactive)
;;   (helm-exit-minibuffer))

;; (eval-after-load "helm"
;;   '(progn
;;      (define-key helm-map (kbd "<RET>") 'my/helm-exit-minibuffer)))
