;;
;; Helm interface to projectile
;;

(conf:add-module-to-path "helm-projectile")

(setq helm-projectile-fuzzy-match nil)

(require 'helm-projectile)

(setq projectile-completion-system 'helm)
(helm-projectile-on)
