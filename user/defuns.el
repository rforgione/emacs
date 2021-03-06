;; Paste to a specified terminal; functionality akin to 
;; vim-slime (i.e. slime but not tied to lisp)
(setq-default tbuf nil)
(defun paste-to-term (beginning end)
  (interactive "r")
  ;; this is erroring out when the cursor is at beginning
  ;; of the file, so we use the max function to ensure that
  ;; the beginning argument is no less than 1
  (copy-region-as-kill (max 1 (- beginning 1)) end)
  (setq b (buffer-name))
  (when (eq tbuf nil)
      (setq tbuf (helm-buffers-list)))
  (switch-to-buffer-other-window tbuf)
  (evil-insert-state)
  (term-paste)
  (execute-kbd-macro (kbd "RET"))
  (execute-kbd-macro (kbd "RET"))
  (switch-to-buffer-other-window b))

;; Unset the terminal target for paste-to-term
(defun unset-term-target ()
  (interactive)
  (setq tbuf nil))

