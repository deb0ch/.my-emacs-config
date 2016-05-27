;;
;; Smarter line navigation.
;; Toggle between beginning of line/code or end of line/code
;;

(conf:add-module-to-path "mwim")

(require 'mwim)

(global-set-key (kbd "C-a") 'mwim-beginning-of-line-or-code)
(global-set-key (kbd "C-e") 'mwim-end-of-code-or-line)
