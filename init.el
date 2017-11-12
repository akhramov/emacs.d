;; -*- lexical-binding: t -*-

;; Initialize package system
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Utils
(use-package cl-lib)

(setf config--dir
      (file-name-directory
       (or load-file-name (buffer-file-name))))

(defun config--path (&rest segments)
    "Build path relative to configs path.
Path is built by appending SEGMENTS to 'default-directory'"
  (cl-labels ((config--path (acc segments)
			    (pcase segments
			      (`(,head . ,tail) (config--path (expand-file-name head acc) tail))
			      (_ acc))))
    (config--path config--dir segments)))

;; Git magic
(use-package magit
  :ensure t)

;; Navigate between splitted buffers easily
(use-package windmove
  :config
  (windmove-default-keybindings))

;; Projectile
(use-package projectile)

(use-package akhramov-projectile-switch-to-buffer
  :load-path
  (lambda () (config--path "packages"))
  :bind
  ("C-x b" . akhramov-projectile-switch-to-buffer))

;; C/C++
(use-package ruby-style
  :load-path
  (lambda () (config--path "packages/vendor")))

;; Ivy
(use-package ivy :ensure t)

(use-package ivy-mt
  :load-path
  (lambda () (config--path "packages"))
  :bind
  ("C-x p" . ivy-mt)
  :config
  (defun ivy-mt-buffer-list ()
    "Retrieve buffers list."
    (if (projectile-project-p)
	(projectile-project-buffers)
      (buffer-list)))

  (defun ivy-mt-launch-term ()
    "Launch new terminal."
    (if (projectile-project-p)
	(cd (projectile-project-root)))

    (call-interactively 'multi-term)))

(use-package counsel :ensure t)

(use-package counsel-projectile
  :ensure t
  :bind
  ("C-x C-p" . counsel-projectile-find-file)
  ("C-x C-o" . counsel-projectile-ag))

;; Smex
(use-package smex
  :ensure t
  :bind
  ("M-x" . smex))

;; Comment util
(use-package comment-dwim-2
  :ensure t
  :bind
  ("M-;" . comment-dwim-2))

;; Multiple cursors
(use-package multiple-cursors
  :ensure t
  :bind
  ("M-]" . mc/mark-next-like-this))

(use-package multi-term
  :ensure t
  :init
  (setf multi-term-program (executable-find "fish"))
  (setf system-uses-terminfo nil))

;; Flycheck
(use-package flycheck
  :ensure t
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode))

;; Ruby mode
(use-package enh-ruby-mode
  :ensure t
  :init
  (add-hook 'ruby-mode-hook 'enh-ruby-mode))

;; JS2 mode
(use-package js2-mode
  :ensure t
  :init
  (add-hook 'js-mode-hook 'js2-minor-mode))

;; Emacs server configuration
(use-package server
  :init
  (setq server-socket-dir (config--path "server")))

(use-package customizations
  :defer t
  :init
  (setq custom-file (config--path "customizations.el"))
  (load custom-file))

;; Disable Menu bar
(menu-bar-mode -1)

(use-package spacemacs-theme
  :ensure t
  :defer t
  :init
  (load-theme 'spacemacs-dark))

(use-package reverse-im
  :ensure t
  :config
  (add-to-list 'reverse-im-input-methods "russian-computer")
  (reverse-im-mode t))

;; Remove trailing spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Enable downcase-region and upcase-region commands
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
