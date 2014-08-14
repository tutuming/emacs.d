;; helm
(require 'helm-config)
(require 'helm-git-files)
(define-key global-map (kbd "C-x C-b") 'helm-for-files)
(setq helm-for-files-preferred-list
      '(helm-git-files:all-source
        helm-source-buffers-list
        ;;helm-source-bookmarks
        helm-source-recentf
        ;;helm-source-file-cache
        ;; helm-source-files-in-current-dir
        ;;helm-source-locate
        ))

(defun my/helm-exit-minibuffer ()
  (interactive)
  (helm-exit-minibuffer))

(eval-after-load "helm"
  '(progn
     (define-key helm-map (kbd "<RET>") 'my/helm-exit-minibuffer)))
