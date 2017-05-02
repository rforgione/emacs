;; Custom paths
(defvar emacs-dir (concat (getenv "HOME") "/.emacs.d/") "top level emacs dir")
(defvar vendor-dir (concat emacs-dir "vendor/") "packages not from ELPA")
(defvar module-dir (concat emacs-dir "user/") "don't enter here. magic!")
(defvar elpa-dir (concat emacs-dir "elpa/") "Elpa stuff here")

;; ELPA Stuff
(require 'package)

;; Add some repos
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Check if elpa dir exists, otherwise get archives
(unless (file-exists-p elpa-dir)
  (package-refresh-contents))

(package-initialize)

;; Packages I use
(defvar elpa-required-packages '(
				 auto-complete
				 evil
				 helm
				 projectile
				 monokai-theme
				 exec-path-from-shell
				 multi-term
				 use-package
				 markdown-mode
				 evil-magit
				 doom-themes
				 ;; These packages depend on those above
				 evil-leader
				 evil-nerd-commenter
				 evil-numbers
				 evil-paredit)
  "Default Packages")

(dolist (pkg elpa-required-packages)
  (when (not (package-installed-p pkg))
    (package-install pkg)))

;; Add to load path
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path module-dir)

;; Require packages in module dir
(mapc 'load (directory-files module-dir nil "^[^#].*el$"))
(mapc 'load (directory-files vendor-dir nil "^[^#].*el$"))

;; Start server
(server-start)
