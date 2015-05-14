(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; 使うパッケージたち
(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    magit
    smartrep
    auto-complete
    flymake
    git-gutter-fringe
    helm
    helm-git-files
    sublime-themes
    multiple-cursors
    expand-region
    ag
    wgrep
    wgrep-ag
    scss-mode
    flymake
    flymake-coffee
    flycheck
    flycheck-pos-tip
    coffee-mode
    json-mode
    log4e
    yaxception
    tss
    yaml-mode
    go-mode
    go-autocomplete
    go-eldoc
    go-errcheck
    motion-mode
    markdown-mode
    thrift
    js2-mode
    jsx-mode
    quickrun
    python-mode
    ;; moccur-edit ;; site-lispに置いてある、自動でとりたい
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
