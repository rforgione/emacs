;; Navigating between window panes
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)

;; Zoom into/out of single pane
(global-set-key (kbd "C-c C-z") 'toggle-maximize-buffer)

;; Make emacs full screen
(global-set-key (kbd "C-c RET") 'toggle-frame-fullscreen)

(global-set-key (kbd "C-c f") 'helm-find)

;; Get vim-slime like functionality
(global-set-key (kbd "C-c C-p") 'paste-to-term)
(global-set-key (kbd "C-x C-p") 'persp-switch)

(global-set-key (kbd "C-x g") 'magit-status)
