;; prevent emacs from creating backup~ files or autosaves
(setq make-backup-files nil)
(setq auto-save-default nil)

;; start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; ido by default
(require 'ido)
(ido-mode t)

;hide toolbar
(tool-bar-mode -1)

;; show column number
(setq column-number-mode t)

