;; -*- mode: elisp -*-
;; Disable the splash screen (to enable it agin, replace the t with 0)


;; Enable transient mark mode
(transient-mark-mode 1)

;;Disable splash screen
(setq inhibit-splash-screen t)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen
(require 'package)
(add-to-list 'package-archives '("melpha" . "https://melpa.org/packages/"))
(package-initialize)


(tool-bar-mode 0)

;; Evil mode
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" default)))
 '(package-selected-packages (quote (deft gruvbox-theme evil)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#f2f1f0" :foreground "#4c4c4c" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 200 :width normal :foundry "DAMA" :family "Ubuntu Mono")))))

(setq org-default-notes-file (concat org-directory "~/org_notes/commonplace.org"))
(define-key global-map "\C-cc" 'org-capture)

;;remap M+return because we're in i3
(define-key org-mode-map (kbd "M-RET") nil)
(define-key org-mode-map (kbd "C-c n") 'org-insert-heading)

;;remap M+right to work with i3
;(define-key org-mode-map (kbd "C-c r") nil)
;(define-key org-mode-map (kbd "C-c r") 'org-do-demote)
(setq default-directory "~/notes/")

;; org meta rebind
(org-defkey org-mode-map (kbd "M-C-RET") #'org-meta-return)

;; Set emacs to use dvipng
(setq org-latex-create-formula-image-program 'dvipng)
