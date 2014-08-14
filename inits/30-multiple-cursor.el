;; multiple-cursors
(require 'multiple-cursors)
(require 'smartrep)

(declare-function smartrep-define-key "smartrep")

(global-set-key (kbd "C-M-c") 'mc/edit-lines)
(global-set-key (kbd "C-M-r") 'mc/mark-all-in-region)

(global-unset-key "\C-J")

(smartrep-define-key global-map "C-J"
  '(("C-J"      . 'mc/mark-next-like-this)
    ("n"        . 'mc/mark-next-like-this)
    ("p"        . 'mc/mark-previous-like-this)
    ("m"        . 'mc/mark-more-like-this-extended)
    ("u"        . 'mc/unmark-next-like-this)
    ("U"        . 'mc/unmark-previous-like-this)
    ("s"        . 'mc/skip-to-next-like-this)
    ("S"        . 'mc/skip-to-previous-like-this)
    ("*"        . 'mc/mark-all-like-this)
    ("d"        . 'mc/mark-all-like-this-dwim)
    ("i"        . 'mc/insert-numbers)
    ("o"        . 'mc/sort-regions)
    ("O"        . 'mc/reverse-regions)))

(defvar jc/mc-search--last-term nil)

(defun jc/mc-search (search-command)
  ;; Read new search term when not repeated command or applying to fake cursors
  (when (and (not mc--executing-command-for-fake-cursor)
             (not (eq last-command 'jc/mc-search-forward))
             (not (eq last-command 'jc/mc-search-backward)))
    (setq jc/mc-search--last-term (read-from-minibuffer "Search: ")))
  (funcall search-command jc/mc-search--last-term))

(defun jc/mc-search-forward ()
  "Simplified version of forward search that supports multiple cursors"
  (interactive)
  (jc/mc-search 'search-forward))

(defun jc/mc-search-backward ()
  "Simplified version of backward search that supports multiple cursors"
  (interactive)
  (jc/mc-search 'search-backward))

(define-key mc/keymap (kbd "C-s") 'jc/mc-search-forward)
(define-key mc/keymap (kbd "C-r") 'jc/mc-search-backward)
