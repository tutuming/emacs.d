(require 'protobuf-mode)
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))

(add-hook 'protobuf-mode-hook
          '(lambda()
             (flycheck-add-next-checker 'flycheck-protobuf)))
