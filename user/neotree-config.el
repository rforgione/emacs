(setq neo-smart-open t)
(setq projectile-switch-project-action 'neotree-projectile-action)

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
