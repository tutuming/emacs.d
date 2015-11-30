;; PATH
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when (and window-system (eq system-type 'darwin))
  ;; When started from Emacs.app or similar, ensure $PATH
  ;; is the same the user would see in Terminal.app
  (set-exec-path-from-shell-PATH))


;; 幅が高くなっても自動で横分割しない
(setq split-height-threshold nil)

;; 履歴保存数
(setq recentf-max-saved-items 500)
(recentf-mode 1)

;; 自動再読み込み
(global-auto-revert-mode 1)

;; kill-ring の最大数
(setq kill-ring-max 200)

;; C-k で行末の改行も消去
(setq kill-whole-line t)

;; 行末のwhitespaceを削除 ( ただし、マークダウンには適用しない
(setq delete-trailing-whitespace-exclude-patterns (list "\\.md$" "\\.markdown$"))

(require 'cl)
(defun delete-trailing-whitespace-with-exclude-pattern ()
  (interactive)
  (cond ((equal nil (loop for pattern in delete-trailing-whitespace-exclude-patterns
                          thereis (string-match pattern buffer-file-name)))
         (delete-trailing-whitespace))))

(add-hook 'before-save-hook 'delete-trailing-whitespace-with-exclude-pattern)

;; ファイル末尾の改行を削除
;; http://www.emacswiki.org/emacs/DeletingWhitespace
(defun my-delete-trailing-blank-lines ()
  "Deletes all blank lines at the end of the file."
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines))))

(add-hook 'before-save-hook 'my-delete-trailing-blank-lines)

;; 初期表示
(setq inhibit-startup-message t)

;; C-h はバックスペース
(global-set-key "\C-h" 'delete-backward-char)

;; メニューバー非表示
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; タブ使わない
(setq-default indent-tabs-mode nil)

;; タブ幅
(setq-default tab-width 2)

;; region選択中にキー入力で上書き
(delete-selection-mode t)

;; 新しいウィンドウ開かない
(setq ns-pop-up-frames nil)

;; emacsclient
(server-start)
