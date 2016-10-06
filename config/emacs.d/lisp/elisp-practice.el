(defun buffer-string* (buffer)
  (with-current-buffer buffer
    (buffer-string)))

(defun diego/drawille-from-image-2 (path &optional imagemagick-arguments)
  (generate-new-buffer "TESTBUFFER")
  (with-current-buffer "TESTBUFFER"
    (shell-command
     (concat "convert " path " -compress none "
	     imagemagick-arguments " pbm:-")
     (get-buffer "TEST_BUFFER"))
    (kill-line 2)
    (drawille-from-string
     (replace-regexp-in-string
      "0" " "
      (replace-regexp-in-string
       " " "" (buffer-string* "TESTBUFFER"))))))

(defun diego/drawille-from-image (path &optional imagemagick-arguments)
  (with-output-to-temp-buffer "TESTBUFFER"
    (shell-command
     (concat "convert " path " -compress none "
	     imagemagick-arguments " pbm:-")
     (get-buffer "TESTBUFFER"))
    (kill-line 2)
	(with-current-buffer "TESTBUFFER"
	  (drawille-from-string
	   (replace-regexp-in-string
		"0" " "
		(replace-regexp-in-string
		 " " "" (buffer-string)))))))

(diego/drawille-from-image-2 "~/Desktop/warpdrive.jpg")
(generate-new-buffer "THIS")