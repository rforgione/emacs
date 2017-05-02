(defun sql-tab-width ()
  "set SQL tab width as local variable"
  (interactive)
  (progn
    (set (make-local-variable 'tab-width) 2)
    (set (make-local-variable 'tab-stop-list)
	 '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44))))

(add-hook 'sql-mode-hook 'sql-tab-width)
