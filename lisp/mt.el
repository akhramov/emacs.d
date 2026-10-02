;;; mt.el --- manage multiterm buffers  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun mt ()
  "Open or create multi-term buffer."
  (interactive)
  (let* ((candidates
	 (mapcar #'buffer-name (ghostel-project-buffer-list)))
         (selection (completing-read "" candidates)))
   (cond ((member selection candidates)
               (switch-to-buffer selection))
              (t
               (ghostel-project t)
               (set-terminal-coding-system 'utf-8-unix)
               (rename-buffer (generate-new-buffer-name selection))))))

(provide 'mt)

;;; ivy-mt ends here
