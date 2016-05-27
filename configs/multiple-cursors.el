;;
;; Conveniently edit in sereval places at once
;;

(conf:add-module-to-path "phi-search")
(conf:add-module-to-path "multiple-cursors")

(require 'phi-search)
(require 'multiple-cursors)

(global-set-key (kbd "M-3") #'mc/mark-next-like-this)
(global-set-key (kbd "M-4") #'mc/mark-previous-like-this)

(global-set-key (kbd "M-#") #'mc/unmark-next-like-this)
(global-set-key (kbd "M-$") #'mc/unmark-previous-like-this)

(global-set-key (kbd "C-3") #'mc/mark-next-symbol-like-this)
(global-set-key (kbd "C-4") #'mc/mark-previous-symbol-like-this)

(global-set-key (kbd "C-#") #'mc/unmark-next-symbol-like-this)
(global-set-key (kbd "C-$") #'mc/unmark-previous-symbol-like-this)

(global-set-key (kbd "M-1") 'mc/mark-all-like-this)

;; Useless so far
;; (global-set-key (kbd "M-5") 'mc/skip-to-next-like-this)
;; (global-set-key (kbd "M-1") 'mc/skip-to-previous-like-this)
