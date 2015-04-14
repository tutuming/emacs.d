;;markdown
(require 'markdown-mode)

(setq auto-mode-alist
      (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

(custom-set-variables
  '(markdown-command "open -a Marked\ 2")
  '(markdown-command-needs-filename t))
