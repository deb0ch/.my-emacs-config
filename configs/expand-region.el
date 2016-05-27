;;
;; Expand-region activation & configuration
;;

(conf:add-module-to-path "expand-region")

(require 'expand-region)

(global-set-key (kbd "M-2") 'er/expand-region)
(global-set-key (kbd "M-@") 'er/contract-region)

(setq expand-region-contract-fast-key "1")
(setq expand-region-reset-fast-key "@")

;; Todo: map the following for html-mode
;; er/mark-html-attribute
;; er/mark-inner-tag
;; er/mark-outer-tag
