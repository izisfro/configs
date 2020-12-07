;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;;Line numbers on the side
(global-linum-mode t)

;;Easy change betweet buffers/files
(ido-mode t)

;; Disable startup screen
(setq inhibit-startup-screen t)

;;font size to 14pt
(set-face-attribute 'default nil :height 140)

;;Color theme
(load-theme 'monokai-pro t)

;;Disable toolbar
(tool-bar-mode -1)

;;Dunk off
(setq ring-bell-function 'ignore)

;;Remove lines on the side
(if (fboundp 'fringe-mode)
    (fringe-mode 0))

(provide 'gui)
