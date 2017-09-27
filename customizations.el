(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "9541f1dc11258239ef02aa1a5e9db3e1e46bc8fb1d7dbe83946c1541ae6dbdf9" default)))
 '(flycheck-disabled-checkers (quote (ruby-rubylint)))
 '(js-indent-level 2)
 '(multi-term-switch-after-close nil)
 '(package-selected-packages
   (quote
    (suscolors-theme ample-theme helm-mt yaml-mode wanderlust w3m use-package tern spacemacs-theme spaceline scss-mode sass-mode ruby-additional racket-mode php-mode persp-projectile org neotree mustache-mode multiple-cursors multi-term mu4e-maildirs-extension mu4e-alert minitest magit lua-mode leuven-theme js2-mode ivy indent-guide helm-projectile helm-ag ghc geiser flymd flycheck exec-path-from-shell erlang enh-ruby-mode elm-mode dtrace-script-mode comment-dwim-2 column-marker color-theme-sanityinc-solarized color-theme coffee-mode ascii-art-to-unicode alchemist ag ack-menu ack)))
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
     ("M-." . comint-dynamic-complete)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-added ((t (:foreground "green"))))
 '(magit-diff-added-highlight ((t (:foreground "green"))))
 '(magit-diff-context-highlight ((t (:foreground "grey70"))))
 '(magit-diff-file-heading-highlight ((t (:background "#202020" :foreground "#008787"))))
 '(magit-diff-removed ((t (:foreground "red"))))
 '(magit-diff-removed-highlight ((t (:foreground "red"))))
 '(show-paren-match ((t (:background "#363626")))))
