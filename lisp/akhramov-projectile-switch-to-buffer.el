;;; akhramov-projectile-switch-to-buffer.el --- convinient binding for switching buffers

;;; Commentary:
;; The akhramov/projectile-switch-to-buffer provides convinient binding
;; for switching buffers.  If we are in a project – use projectile-switch-to-buffer,
;; and fallback to default switch-to-buffer otherwise.

;;; Code:
(require 'projectile)

(defun akhramov-projectile-switch-to-buffer ()
  "Switch to buffer project buffer if in buffer, fallback to default 'switch-to-buffer' otherwise."
  (interactive)
  (if (projectile-project-p)
      (call-interactively 'projectile-switch-to-buffer)
    (call-interactively 'switch-to-buffer)))

(provide 'akhramov-projectile-switch-to-buffer)
;;; projectile-switch-to-buffer.el ends here
