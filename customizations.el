(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-highlight-level 'non-interactive)
 '(c-default-style
   '((c-mode . "ruby")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")))
 '(custom-safe-themes
   '("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "9541f1dc11258239ef02aa1a5e9db3e1e46bc8fb1d7dbe83946c1541ae6dbdf9" default))
 '(desktop-restore-frames t)
 '(enh-ruby-deep-indent-paren nil)
 '(epa-pinentry-mode 'loopback)
 '(eyebrowse-keymap-prefix "")
 '(flycheck-disabled-checkers '(c/c++-clang ruby-rubylint))
 '(flycheck-gcc-include-path '("/Users/artem/.rbenv/versions/2.4.2/include/ruby-2.4.0"))
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(keyboard-coding-system 'utf-8-unix)
 '(multi-term-switch-after-close nil)
 '(org-agenda-files
   '("~/Documents/planning/work.org" "~/Documents/planning/personal.org"))
 '(org-todo-keywords '((sequence "TODO" "IN PROGRESS" "DONE")))
 '(org-wild-notifier-keyword-blacklist nil)
 '(package-selected-packages
   '(cider pinentry system-packages eclim ob-restclient docker-tramp org-wild-notifier dash-functional dash org-alert htmlize desktop+ haskell-mode vue-mode window-jump reverse-im suscolors-theme ample-theme helm-mt yaml-mode wanderlust w3m use-package tern spacemacs-theme spaceline scss-mode sass-mode ruby-additional racket-mode php-mode persp-projectile org neotree mustache-mode multiple-cursors multi-term mu4e-maildirs-extension mu4e-alert minitest magit lua-mode leuven-theme js2-mode ivy indent-guide helm-projectile helm-ag ghc geiser flymd flycheck exec-path-from-shell erlang enh-ruby-mode elm-mode dtrace-script-mode comment-dwim-2 column-marker color-theme-sanityinc-solarized color-theme coffee-mode ascii-art-to-unicode alchemist ag ack-menu ack))
 '(safe-local-variable-values
   '((eval when
           (and
            (buffer-file-name)
            (file-regular-p
             (buffer-file-name))
            (string-match-p "^[^.]"
                            (buffer-file-name)))
           (unless
               (featurep 'package-build)
             (let
                 ((load-path
                   (cons "../package-build" load-path)))
               (require 'package-build)))
           (package-build-minor-mode)
           (set
            (make-local-variable 'package-build-working-dir)
            (expand-file-name "../working/"))
           (set
            (make-local-variable 'package-build-archive-dir)
            (expand-file-name "../packages/"))
           (set
            (make-local-variable 'package-build-recipes-dir)
            default-directory))
     (encoding . utf-8)))
 '(term-bind-key-alist
   '(("C-c C-c" . term-interrupt-subjob)
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
     ("C-c C-k" . term-char-mode)))
 '(term-unbind-key-list '("C-z" "C-x" "C-h" "C-y" "<ESC>")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#d3d3d3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "DejaVu Sans Mono for Powerline"))))
 '(magit-section-highlight ((t nil)))
 '(mmm-default-submode-face ((t nil)))
 '(org-block ((t (:background "black" :foreground "#dcdccc"))))
 '(org-block-begin-line ((t (:background "black" :foreground "#008ED1"))))
 '(org-block-end-line ((t (:background "black" :foreground "#008ED1")))))
