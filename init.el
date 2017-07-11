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
  (cl-letf (((symbol-function 'config--path)
	     (lambda (acc segments)
	       (pcase segments
		 (`(,head . ,tail) (config--path (expand-file-name head acc) tail))
		 (_ acc)))))
    (config--path config--dir segments)))

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

;; Helm
(use-package helm)

(use-package helm-projectile
  :bind
  ("C-x C-p" . helm-projectile))

(use-package helm-mt
  :bind
  ("C-x p" . helm-mt))

(use-package helm-projectile-ag
  :bind
  ("C-x C-o" . helm-projectile-ag))

;; Comment util
(use-package comment-dwim-2
  :bind
  ("M-;" . comment-dwim-2))

;; Multiple cursors
(use-package multiple-cursors
  :bind
  ("M-]" . mc/mark-next-like-this))

(use-package multi-term
  :init
  (setf multi-term-program (executable-find "fish"))
  (setf system-uses-terminfo nil))

;; Flycheck
(use-package flycheck
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode))

;; Ruby mode
(use-package enh-ruby-mode
  :init
  (add-hook 'ruby-mode-hook 'enh-ruby-mode))

;; JS2 mode
(use-package js2-mode
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

;; Remove trailing spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Load theme
(load-theme 'leuven t)
(load-theme 'leuven-dark t)
