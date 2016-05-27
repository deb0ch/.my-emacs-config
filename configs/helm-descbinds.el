;;
;; an interface to emacs’ describe-bindings using helm for interactive search
;;

(conf:add-module-to-path "helm")
(conf:add-module-to-path "helm-descbinds")

(require 'helm-descbinds)

(helm-descbinds-mode)
