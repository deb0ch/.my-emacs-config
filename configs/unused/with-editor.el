;;
;; Use the Emacsclient as the $EDITOR of child processes http://magit.vc/manual/with-editor
;;

(conf:add-module-to-path "with-editor")

(require 'with-editor)

(define-key (current-global-map)
  [remap async-shell-command] 'with-editor-async-shell-command)
(define-key (current-global-map)
  [remap shell-command] 'with-editor-shell-command)

(add-hook 'shell-mode-hook  'with-editor-export-editor)
(add-hook 'term-mode-hook   'with-editor-export-editor)
(add-hook 'eshell-mode-hook 'with-editor-export-editor)
