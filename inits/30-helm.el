;; helm
(require 'helm-config)
(require 'helm-ls-git)
(require 'helm-ag)

(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-thing-at-point 'word)

(define-key global-map (kbd "C-x C-b") 'helm-for-files)

(define-key global-map (kbd "C-x C-y") 'helm-show-kill-ring)

(define-key global-map (kbd "C-x C-g") 'helm-ag)

(setq helm-for-files-preferred-list
      '(
        helm-source-buffers-list
        helm-source-ls-git-status
        helm-source-ls-git
        helm-source-files-in-current-dir
        helm-source-recentf
        ))

(setq helm-buffer-details-flag nil)

;; helm-follow-mode （C-c C-f で ON/OFF）の前回の状態を維持する
(setq helm-follow-mode-persistent t)

;; ミニバッファで C-k 入力時にカーソル以降を削除する（C-u C-k でも同様の動きをする）
(setq helm-delete-minibuffer-contents-from-point t)
