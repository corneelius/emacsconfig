(setq codedir "/Users/MacBookPro_Retina/Library/Mobile Documents/com~apple~CloudDocs/code")
(add-to-list 'load-path codedir)
(load-file (concat codedir "/emacs/load-directory.el"))
(show-paren-mode)

(defun copy() 
  (interactive)
  (shell-command-on-region (mark) (point)  "pbcopy")
 )

(defun set-favorite-window()
  (interactive)
  (setq favorite-window (selected-window))

)
(defun goto-favorite-window()
  (interactive)
  (select-window favorite-window)

)
(defun run-file()
  (interactive)
  (save-buffer)
  (load-file (buffer-file-name))
)
(defun insert-code-parens () 
  (interactive)
  (insert "{\n\t\n}")
  (previous-line)
  (move-end-of-line nil)
)
  
(load-directory (concat codedir "/emacs/lib"))
(require 'lacarte)

(global-set-key (kbd "C-c c") 'goto-favorite-window)
(global-set-key (kbd "<ESC> M-x") 'lacarte-execute-menu-command)
(global-set-key (kbd "C-c o") (lambda () (interactive) (other-window '-1)))
(global-set-key (kbd "M-[ [") 'insert-code-parens)


