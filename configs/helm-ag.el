;;
;; A Helm interface to the silversearcher-ag
;;

(conf:add-module-to-path "helm-ag")

(require 'helm-ag)

(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-command-option "--all-text")
(setq helm-ag-insert-at-point 'symbol)
