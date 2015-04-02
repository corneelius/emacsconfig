(defun line-to-top-of-window ()
 "move the line point to the top of the window"
 (interactive)
 (recenter 0)
 )
(defun scroll-down-one () 
  "Scroll down one line"
  (interactive)
  (scroll-up-command 1)
)
(defun scroll-up-one () 
  "Scroll up one line"
  (interactive)
  (scroll-down-command 1)
)
(global-set-key (kbd "M-n") 'scroll-down-one)
(global-set-key (kbd "M-p") 'scroll-up-one)
