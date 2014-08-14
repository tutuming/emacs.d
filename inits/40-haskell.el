;; haskell
(autoload 'haskell-mode "haskell-mode")
(autoload 'haskell-cabal "haskwll-cabal")

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))     ;#!/usr/bin/env runghc 用
(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode)) ;#!/usr/bin/env runhaskell 用

;; Flymake Haskell
(defun flymake-haskell-make-command (temp-file)
  (list "make"
        (flymake-haskell-make-parameters temp-file)))

(defun flymake-haskell-make-parameters (temp-file)
  (list "-s"
        "-C"
        "."
        (concat "CHK_SOURCES=" temp-file)
        "SYNTAX_CHECK_MODE=1"
        "check-syntax"))

(defun flymake-haskell-default-ghc-command (local-file)
  (list "ghc"
        (flymake-haskell-default-ghc-parameters
         (file-name-nondirectory local-file))))

(defun flymake-haskell-default-ghc-parameters (local-file)
  (list "-fno-code" local-file))

(defun makefile-exists-p (path)
  (file-exists-p (concat path "Makefile")))

(defun flymake-haskell-init()
  (let* ((temp-file  (flymake-init-create-temp-buffer-copy
                      'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (if (makefile-exists-p (file-name-directory buffer-file-name))
        (flymake-haskell-make-command temp-file)
      (flymake-haskell-default-ghc-command local-file))))

(push '(".+\\hs$" flymake-haskell-init) flymake-allowed-file-name-masks)
(push '(".+\\lhs$" flymake-haskell-init) flymake-allowed-file-name-masks)
(push '("^\\(\.+\.hs\\|\.lhs\\):\\([0-9]+\\):\\([0-9]+\\):\\(\.+\\)" 1 2 3 4)
      flymake-err-line-patterns)

(add-hook 'haskell-mode-hook
          '(lambda ()
             (if (not (null buffer-file-name))
                 (flymake-mode))))
