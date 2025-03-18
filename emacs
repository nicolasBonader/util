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

;; misterioso theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(misterioso))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(feature-mode yaml-mode dockerfile-mode))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; adding melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; enable uppercase and lowercase commands (disabled by default)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

