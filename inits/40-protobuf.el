(require 'protobuf-mode)
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))

(add-to-list 'flycheck-checkers 'flycheck-protobuf)
