;;
;; Project Interaction Library for Emacs.
;;

(conf:add-module-to-path "dash")
(conf:add-module-to-path "projectile")

(require 'projectile)

(projectile-global-mode)

(setq projectile-enable-caching t)
(setq projectile-file-exists-local-cache-expire (* 24 60 60)) ; 24 hours cache expire

;; Disable usage of svn command (horribly slow on large project..)
;(setq projectile-svn-command projectile-generic-command)

;; Way too slow on large projects
;; (add-hook 'projectile-mode-hook '(lambda ()
;;                               (remove-hook 'find-file-hook #'projectile-cache-files-find-file-hook t)
;;                               (remove-hook 'find-file-hook #'projectile-visit-project-tags-table t)))

;; (eval-after-load 'helm
;;   '(progn
;;      (setq helm-projectile-fuzzy-match nil)

;;      (require 'helm-projectile)

;;      (setq projectile-completion-system 'helm)
;;      (define-key helm-projectile-find-file-map (kbd "<right>") nil)
;;      (define-key helm-projectile-find-file-map (kbd "<left>")  nil)

;;      (helm-projectile-on)))
