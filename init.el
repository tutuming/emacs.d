;; ~/.emacs.d/site-lisp 以下全部読み込み
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
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-safe-themes
   (quote
    ("68769179097d800e415631967544f8b2001dae07972939446e21438b1010748c" default)))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(js2-basic-offset 2)
 '(js2-cleanup-whitespace t)
 '(js2-enter-indents-newline nil)
 '(js2-indent-on-enter-key nil)
 '(js2-rebind-eol-bol-keys nil)
 '(large-file-warning-threshold nil)
 '(markdown-command "open -a Marked")
 '(markdown-command-needs-filename t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
