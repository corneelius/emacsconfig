(defun load-directory (path)
   (setq loaded-files nil)
   (if (file-directory-p path)
       (progn
	 (let ((files (directory-files path)))
	       (while files
		 (setq file (car files))
		 (if (lisp-file-p file)
		     (progn
		       (setq canonical-file (concat path "/" file))
		       (setq loaded-files (append file loaded-files))
		       (load-file canonical-file)
		       )
		   )
		 (setq files (cdr files))
		 )
	       )
	 )
     (message (concat "Invalid directory: " path))
     )
   loaded-files	     
 )

(defun lisp-file-p (name)
  (if (equal (file-name-extension name) "el")
      t
    nil))
    
