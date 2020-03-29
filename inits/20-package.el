(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; 使うパッケージたち
(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    magit
    bind-key
    company
    git-gutter-fringe
    helm
    helm-swoop
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
    flycheck-protobuf
    json-mode
    log4e
    yaxception
    tss
    yaml-mode
    go-mode
    go-autocomplete
    go-eldoc
    go-errcheck
    go-guru
    golint
    motion-mode
    markdown-mode
    js2-mode
    jsx-mode
    typescript-mode
    tide
    web-mode
    quickrun
    python-mode
    terraform-mode
    slime
    yasnippet
    dired-subtree
    protobuf-mode
    dockerfile-mode
    vue-mode
    add-node-modules-path
    js-auto-format-mode
    dart-mode
    lsp-mode
    moccur-edit
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
