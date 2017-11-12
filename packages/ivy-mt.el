;;; ivy-mt.el --- manage multiterm buffers from ivy

;;; Commentary:

;;; Code:

(set-default 'ivy-mt-buffer-list 'buffer-list)
(set-default 'ivy-mt-launch-term 'multi-term)

(defun ivy-mt ()
  "Open or create multi-term buffer."
  (interactive)
  (let ((candidates
	 (mapcar #'buffer-name (cl-intersection (ivy-mt-buffer-list) multi-term-buffer-list))))
    (ivy-read "Create or jump to MT buffer: "
  	    candidates
  	    :action
  	    (lambda (x)
  	      (cond ((member x candidates)
		     (switch-to-buffer x))
		    (t
		     (ivy-mt-launch-term)
		     (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix)
		     (rename-buffer (generate-new-buffer-name x)))))
	    :caller
	    'ivy-mt-jump)))

(provide 'ivy-mt)

;;; ivy-mt ends here
