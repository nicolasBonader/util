;; prevent emacs from creating backup~ files or autosaves
(setq make-backup-files nil)

;; emacs auto save same file
(auto-save-visited-mode 1)
(setq auto-save-visited-interval 1)

;; start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; ido by default
(require 'ido)
(ido-mode t)

;hide toolbar
(tool-bar-mode -1)

;; show column number
(setq column-number-mode t)

;; theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-molokai))
 '(custom-safe-themes
   '("e978b5106d203ba61eda3242317feff219f257f6300bd9b952726faf4c5dee7b" "dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176" "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" "691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b" "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad" "32f22d075269daabc5e661299ca9a08716aa8cda7e85310b9625c434041916af" "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8" "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "452068f2985179294c73c5964c730a10e62164deed004a8ab68a5d778a2581da" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "30d174000ea9cbddecd6cc695943afb7dba66b302a14f9db5dd65074e70cc744" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "7758a8b8912ef92e8950a4df461a4d510484b11df0d7195a8a3d003965127abc" "f5f80dd6588e59cfc3ce2f11568ff8296717a938edd448a947f9823a4e282b66" "350fef8767e45b0f81dd54c986ee6854857f27067bac88d2b1c2a6fa7fecb522" "3c08da65265d80a7c8fc99fe51df3697d0fa6786a58a477a1b22887b4f116f62" "2b20b4633721cc23869499012a69894293d49e147feeb833663fdc968f240873" "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1" "8b148cf8154d34917dfc794b5d0fe65f21e9155977a36a5985f89c09a9669aa0" "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641" "6f1f6a1a3cff62cc860ad6e787151b9b8599f4471d40ed746ea2819fcd184e1a" "d6b934330450d9de1112cbb7617eaf929244d192c4ffb1b9e6b63ad574784aad" "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" "4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d" "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" default))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(gptel windresize ivy-posframe doom-themes feature-mode yaml-mode dockerfile-mode))
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

;; gptel
(setq gptel-api-key "open-ai-key")
(define-key global-map (kbd "C-c RET") 'gptel-send)
(global-set-key (kbd "C-c c") 'gptel)

;; treemacs
(require 'treemacs)
(setq treemacs-width 50)
(global-set-key (kbd "<f5>") 'treemacs)


;; auto close brackets
(electric-pair-mode t)
(setq electric-pair-preserve-balance nil)


(defun my-text-electric-pair-inhibit (char)
  ;; Account for buffer-end weirdness
  (unless (eq (following-char) 0)
    (or
     ;; (electric-pair-inhibit-if-helps-balance char)
     ;; TODO This logic isn't quite right, check out how
     ;; `electric-pair-inhibit-if-helps-balance' does it.
     ;; (electric-pair-conservative-inhibit char)
     ;; Don't pair after before a word
     (memq (char-syntax (char-before)) '(?w ?.))
     (memq (char-syntax (following-char)) '(?w ?.))
     (memq (char-syntax (char-after (- (point) 2))) '(?w ?.))
)))

(setq electric-pair-inhibit-predicate 'my-text-electric-pair-inhibit)


;; scroll
(global-set-key (kbd "C-.") 'scroll-up-line)
(global-set-key (kbd "C-,") 'scroll-down-line)


;; ivy-postframe attempt
(require 'ivy-posframe)
;; display at `ivy-posframe-style'
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))
 (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-center)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-top-center)))
(ivy-posframe-mode 1)


;;windresize
(global-set-key (kbd "<f6>") 'windresize)

