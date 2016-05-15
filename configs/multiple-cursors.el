;; *******************
;; * Multiple cursors
;; *******************

(conf:add-module-to-path "phi-search")
(conf:add-module-to-path "multiple-cursors")

(require 'phi-search)
(require 'multiple-cursors)

(global-set-key (kbd "C-j") 'mc/mark-next-symbol-like-this)
(global-set-key (kbd "M-j") 'mc/mark-next-like-this)
(global-set-key (kbd "C-n") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-S-n") 'mc/unmark-previous-like-this)
