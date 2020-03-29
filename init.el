;; ~/.emacs.d/site-lisp 以下全部読み込み

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(setq init-loader-show-log-after-init nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-highlight-search t)
 '(ag-reuse-buffers (quote nil))
 '(ag-reuse-window (quote nil))
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(create-lockfiles nil)
 '(custom-safe-themes
   (quote
    ("68769179097d800e415631967544f8b2001dae07972939446e21438b1010748c" default)))
 '(flycheck-disabled-checkers (quote (javascript-jshint javascript-jscs)))
 '(flycheck-navigation-minimum-level (quote error))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(helm-source-names-using-follow (quote ("Buffers")))
 '(js-indent-level 2)
 '(js2-basic-offsetsstrict-tra 2)
 '(js2-cleanup-whitespace t)
 '(js2-enter-indents-newline nil)
 '(js2-indent-on-enter-key nil)
 '(js2-rebind-eol-bol-keys nil)
 '(js2-strict-trailing-comma-warning t)
 '(large-file-warning-threshold nil)
 '(lsp-inhibit-message t t)
 '(lsp-message-project-root-warning t t)
 '(markdown-command "open -a \"Marked 2\"")
 '(markdown-command-needs-filename t)
 '(package-selected-packages
   (quote
    (autotest autopair go-imenu color-moccur embrace expand-line flx-isearch moccur-edit lsp flyspell-popup typescript typescript-mode helm-ls-git helm-git darcsum dap-mode helm-lsp lsp-treemacs company-lsp use-package projectile-codesearch projectile lsp-ui prettier-js lsp-vue vue-html-mode bind-key eglot dart-mode popup-complete add-node-modules-path js-auto-format-mode vue-mode golint go-guru yaml-mode wgrep-ag web-mode tss toml-mode thrift terraform-mode sublime-themes smartrep scss-mode quickrun python-mode popwin php-mode multiple-cursors motion-mode markdown-mode magit jsx-mode js2-mode helm-swoop helm-git-files helm-ag go-errcheck go-eldoc go-autocomplete git-rebase-mode git-gutter-fringe git-commit-mode format-sql flymake-coffee flycheck-protobuf flycheck-pos-tip expand-region ensime dockerfile-mode dired-subtree coffee-mode ag ac-slime))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
