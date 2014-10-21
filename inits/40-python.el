(require 'python-mode)

;;pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(eval-after-load "pymacs"
  '(add-to-list 'pymacs-load-path "~/.pymacs"))

;;pycomplete
(add-hook 'python-mode-hook '(lambda ()
                               (require 'pycomplete)
                               ))
