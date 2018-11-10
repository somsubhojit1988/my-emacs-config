;;;; starting this on 13 Jul 2018
;;;  Subhojit Som susom@iu.edu

;;; My stuffs
(require 'package)
;;;; setup melpa package manager
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa"."https://melpa.org/packages/") t)
;; (package-initialize)

;;; boot strap use-package
;;;; A package to help installing packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Enable use-package
(eval-when-compile
  (require 'use-package))
(require 'bind-key) ;; if you use any :bind variant
;;; init-use-package.el

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
;; (org-babel-load-file (expand-file-name "~/.emacs.d/email-setup.org"))

;;;; REMOVING THIS
;;;; tabbar: nice little package that opens tabs
;;; will be using it for a while now
;; (use-package tabbar
;;   :ensure t
;;   :config
;;   (tabbar-mode 1))

;;; color theme
;; (use-package color-theme
;;   :ensure t)

;; ;;(load-theme 'leuven t)
;; (use-package zenburn-theme
;;   :ensure t
;;   :config (load-theme 'zenburn t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(package-selected-packages
   '(elpy material-theme fill-column-indicator flycheck-pyflakes helm-projectile projectile flycheck-rtags company-rtags helm-rtags rtags company-irony irony company flycheck multiple-cursors magit json-mode cyberpunk-theme bm groovy-mode matlab-mode zenburn-theme which-key use-package try spacemacs-theme org-mime org-bullets mu4e-alert counsel color-theme auto-complete ace-window))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "unknown" :slant normal :weight normal :height 113 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'downcase-region 'disabled nil)
