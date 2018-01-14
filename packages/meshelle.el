;;; meshelle.el --- projectile aware eshell management

;;; Commentary:

;;; Code:

(require 'projectile)
(require 'dash)

(defun meshelle--run (name)
  "Create a new eshell buffer with NAME."
  (-->
   (if (projectile-project-p)
       (projectile-project-root)
     default-directory)

   (let ((default-directory it)
         (eshell-buffer-name name))
     (eshell))))

(defun meshelle--eshell-p (buffer)
  "Check whether BUFFER is run in eshell mode."
  (-> (buffer-local-value 'major-mode buffer)
    (eq 'eshell-mode)))

(defun meshelle--buffers ()
  "Retrieve candidates."
  (->>
    (if (projectile-project-p)
        (projectile-project-buffers)
      (buffer-list))

    (-filter 'meshelle--eshell-p)
    (-map 'buffer-name)))

(defun meshelle ()
  "Open or create eshell buffer."
  (interactive)
  (--> (meshelle--buffers)
       (ivy-read "Create or jump to eshell buffer: "
                 it
                 :action
                 (lambda (x)
                   (if (-contains-p it x)
                       (switch-to-buffer x)
                     (->
                       (meshelle--run (generate-new-buffer-name x))
                       (switch-to-buffer))))
                 :caller 'meshelle)))

(provide 'meshelle)

;;; meshelle ends here
