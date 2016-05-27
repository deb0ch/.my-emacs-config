;;
;; Highlight-symbol activation & configuration
;;

(conf:add-module-to-path "highlight-symbol")

(require 'highlight-symbol)

(global-set-key (kbd "M-5") 'highlight-symbol)
;(global-set-key (kbd "C-5") 'highlight-symbol-next)
;(global-set-key (kbd "C-%") 'highlight-symbol-prev)
;(global-set-key (kbd "C-M-5") 'highlight-symbol-query-replace)
