(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-highlight-level (quote non-interactive))
 '(c-default-style
   (quote
    ((c-mode . "ruby")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "9541f1dc11258239ef02aa1a5e9db3e1e46bc8fb1d7dbe83946c1541ae6dbdf9" default)))
 '(desktop-restore-frames t)
 '(enh-ruby-deep-indent-paren nil)
 '(flycheck-disabled-checkers (quote (ruby-rubylint)))
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(multi-term-switch-after-close nil)
 '(org-agenda-files (quote ("~/Documents/agenda.org")))
 '(org-todo-keywords (quote ((sequence "TODO" "IN PROGRESS" "DONE"))))
 '(package-selected-packages
   (quote
    (htmlize desktop+ haskell-mode vue-mode window-jump reverse-im suscolors-theme ample-theme helm-mt yaml-mode wanderlust w3m use-package tern spacemacs-theme spaceline scss-mode sass-mode ruby-additional racket-mode php-mode persp-projectile org neotree mustache-mode multiple-cursors multi-term mu4e-maildirs-extension mu4e-alert minitest magit lua-mode leuven-theme js2-mode ivy indent-guide helm-projectile helm-ag ghc geiser flymd flycheck exec-path-from-shell erlang enh-ruby-mode elm-mode dtrace-script-mode comment-dwim-2 column-marker color-theme-sanityinc-solarized color-theme coffee-mode ascii-art-to-unicode alchemist ag ack-menu ack)))
 '(projectile-switch-project-action (quote projectile-dired))
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(term-bind-key-alist
   (quote
    (("C-c C-c" . term-interrupt-subjob)
     ("C-c C-e" . term-send-esc)
     ("C-p" . previous-line)
     ("C-n" . next-line)
     ("C-s" . isearch-forward)
     ("C-r" . isearch-backward)
     ("C-m" . term-send-return)
     ("C-y" . term-paste)
     ("<M-right>" . term-send-forward-word)
     ("<M-left>" . term-send-backward-word)
     ("M-o" . term-send-backspace)
     ("M-p" . term-send-up)
     ("M-n" . term-send-down)
     ("M-M" . term-send-forward-kill-word)
     ("M-N" . term-send-backward-kill-word)
     ("<M-backspace>" . term-send-backward-kill-word)
     ("M-r" . term-send-reverse-search-history)
     ("M-," . term-send-raw)
     ("M-." . comint-dynamic-complete)
     ("C-c C-j" . term-line-mode)
     ("C-c C-k" . term-char-mode))))
 '(term-unbind-key-list (quote ("C-z" "C-x" "C-h" "C-y" "<ESC>"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-current-match ((t (:background "black" :foreground "brightblue"))))
 '(magit-section-highlight ((t nil)))
 '(org-block ((t (:background "black" :foreground "#dcdccc"))))
 '(org-block-begin-line ((t (:background "black" :foreground "#008ED1"))))
 '(org-block-end-line ((t (:background "black" :foreground "#008ED1")))))
