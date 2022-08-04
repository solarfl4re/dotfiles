(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(eval-when-compile
  (require 'use-package))
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" default))
 '(package-selected-packages
   '(treemacs-magit treemacs-projectile treemacs-evil treemacs org-superstar gruvbox-theme general projectile magit which-key evil-collection evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))
(use-package which-key
  :config
  (which-key-mode))
(use-package org
  :config
  (setq org-agenda-files '("~/writing/notes.org" "~/writing/ru-peter.org")))
(use-package magit)
(use-package projectile)
(use-package general)
(use-package gruvbox-theme)
(use-package org-superstar
  :after org
  :hook (org-mode . org-superstar-mode))
(use-package treemacs)
(use-package treemacs-evil
  :after treemacs evil)
(use-package treemacs-projectile
  :after treemacs projectile)
(use-package treemacs-magit
  :after treemacs magit)

;; Keybindings
;;; Org mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(global-set-key (kbd "C-c t") #'treemacs)

(define-key evil-normal-state-map (kbd "[ b") 'previous-buffer)
(define-key evil-normal-state-map (kbd "] b") 'next-buffer)

(load "~/.emacs.d/ukrainian-colemak.el")
(load "~/.emacs.d/cyrillic-colemak.el")

(add-to-list 'default-frame-alist
	     '(font . "Deja Vu Sans Mono-12"))
(load-theme 'gruvbox-light-medium)
