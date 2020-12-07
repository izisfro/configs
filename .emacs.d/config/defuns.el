;;Insert a newline above the current line and put point at beginning.
(defun add-line-above ()
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

;;Insert a newline below the current line and put point at beginning.
(defun add-line-below ()
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

;;Indent whole buffer
(defun iwb ()
  ;;  (progn
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max))
  (message "indent buffer"))

;;Delete inside parenthesis/quotes
(defun select-text-in-quote ()
  "http://xahlee.org/emacs/modernization_mark-word.html"
  (interactive)
  (let (b1 b2)
    (skip-chars-backward "^<>([{â€œã€Œã€Žâ€¹Â«ï¼ˆã€ˆã€Šã€”ã€ã€–â¦—ã€˜\"")
    (setq b1 (point))
    (skip-chars-forward "^<>)]}â€ã€ã€â€ºÂ»ï¼‰ã€‰ã€‹ã€•ã€‘ã€—â¦˜ã€™\"")
    (setq b2 (point))
    (set-mark b1)))

;;Format xml with newline
(defun pretty-print-xml-region(begin end)
  (interactive "r")
  (save-excursion
    (nxml-mode)
    (goto-char begin)
    (while (search-forward-regexp "\>[ \\t]*\<" nil t)
      (backward-char) (insert "\n"))
    (indent-region begin end)))

(provide 'defuns)
