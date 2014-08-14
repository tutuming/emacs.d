;; 今開いてるソースのディレクトリをFinderで開く
(defun open-current-dir-with-finder ()
  (interactive)
  (shell-command (concat "open .")))
