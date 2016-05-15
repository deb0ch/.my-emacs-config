;; *************
;; * undo-tree
;; *************

(conf:add-module-to-path "undo-tree")

(require 'undo-tree)
(global-undo-tree-mode 1)

(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-_") 'undo)
(global-set-key (kbd "M-_") 'redo)

;(setq undo-tree-auto-save-history 1)

;(conf:diminish 'undo-tree-mode)
