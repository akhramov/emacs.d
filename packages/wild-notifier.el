;;; wild-notififer.el --- notifier style
;;; It's like terminal-notifier, but executes commands.
;;; Also this notifier uses -activate switch, so a terminal will be
;;; focused.
;;;
;;; See wild-notifier-commands

;;; Commentary:

;;; Code:

(require 'alert)

(defvar wild-notifier-commands
  '([(string-equal (plist-get info :title) "Agenda") (org-agenda-list)]))

;; osascript -e 'id of app "Iterm2"'
(defvar wild-notifier-osx-app-id
  (alert-encode-string "com.googlecode.iterm2"))

(defun wild-notifier--find-command (info)
  "Find command do execute.
Loop through 'wild-notifier-commands' and check whether
INFO matches any rule."
  (let ((command
         (seq-find (lambda (x) (eval (elt x 0))) wild-notifier-commands)))
    (elt command 1)))

(defun wild-notifier--exec-command (cmd)
  "Command line argument for -execute.
CMD is elisp command to be executed."
  (alert-encode-string
   (format "%s --no-wait --eval '%S'" (executable-find "emacsclient") cmd)))

(defun wild-notifier--call-process-advice (orig-func &rest old-args)
  "Advices 'call-process' to take additional arguments.
ORIG-FUNC is 'call-process'.  OLD-ARGS is arguments to be modified."
  (let ((exec-cmd
         (list "-execute" (wild-notifier--exec-command command)
               "-activate" wild-notifier-osx-app-id)))
    (if command
        (apply orig-func `(,@old-args ,@exec-cmd)))))

(defun wild-notifier (info)
  "Notifier for 'alert' library.
Executes command depending on provided INFO.  You can define your own
rules by setting wild-notifier-rules."
  (let ((command (wild-notifier--find-command info)))
    (progn
      (add-function :around (symbol-function 'call-process)
                    #'wild-notifier--call-process-advice)

      (alert-notifier-notify info)

      (remove-function (symbol-function 'call-process)
                       #'wild-notifier--call-process-advice))))

(alert-define-style 'wild
                    :title "Because I can."
                    :notifier 'wild-notifier)

(provide 'wild-notifier)
;;; wild-notifier.el ends here
