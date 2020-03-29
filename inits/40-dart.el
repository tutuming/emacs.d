;;; Dart --- init

(require 'dart-mode)
(setq dart-enable-analysis-server t)
(add-hook 'dart-mode-hook 'flycheck-mode)
(add-to-list 'eglot-server-programs '(dart-mode . ("dart_language_server")))
(add-hook 'dart-mode-hook 'eglot-ensure)
