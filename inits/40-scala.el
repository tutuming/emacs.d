(setenv "JDK_HOME" "/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home")
(setenv "JAVA_HOME" "/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home")

(require 'scala-mode2)
(require 'ensime)
(setq ensime-completion-style 'auto-complete)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook
          '(lambda()
             (local-set-key (kbd "C-c C-j") 'ensime-edit-definition)
             (local-set-key (kbd "C-c C-c C-j") 'ensime-edit-definition-other-window)
             ))
