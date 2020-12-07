
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "C-c c") 'shell-command)
(global-set-key (kbd "C-u") 'undo-only)
(global-set-key (kbd "M-v") 'clipboard-yank)

;;; for defuns
(define-key global-map (kbd "C-o") 'add-line-below)
(define-key global-map (kbd "M-o") 'add-line-above)
(define-key global-map (kbd "C-ø") 'iwb)
(global-set-key (kbd "M-ø") 'select-text-in-quote)

;;;for packages
(global-set-key (kbd "C-x u") 'undo-tree)

;; ido mode on M-x
(global-set-key (kbd "M-x") 'smex)

(provide 'bindings)
