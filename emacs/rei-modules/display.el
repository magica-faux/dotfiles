;;; DISPLAY - ELISP Module that controls theming
;;  REI Core Module
;;  Magica-Faux * 2025 

(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox-dark-hard t))

(when (display-graphic-p)
  (setq default-frame-alist 
        '((font . "Unifont-24")
          (vertical-scroll-bars . nil)
          (horizontal-scroll-bars . nil))))

(when (display-graphic-p)
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (set-fringe-mode 0)
  (window-divider-mode -1))
 
(setq inhibit-startup-message t
      visible-bell nil)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(xterm-mouse-mode t)
