;; motion-mode
;; following adding of hook is very important.
(require 'motion-mode)

(add-hook 'ruby-mode-hook 'motion-recognize-project)

;; set keybindings as you like
(define-key motion-mode-map (kbd "C-c C-c") 'motion-execute-rake)
(define-key motion-mode-map (kbd "C-c C-r") 'motion-convert-code-region)

;; dash 開く
(defun dash-at-point ()
  "This function open document by Dash.app."
  (interactive)
  (let ((keyword (thing-at-point 'word)))
    (princ keyword)
    (shell-command (format "open dash://%s" keyword))))

(define-key global-map (kbd "C-c C-d") 'dash-at-point)
