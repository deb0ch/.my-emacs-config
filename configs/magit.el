;;
;; A git interface from inside emacs
;;

(conf:add-module-to-path "dash")
(conf:add-module-to-path "with-editor")
(conf:add-module-to-path "magit/lisp")

(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
	       "~/my-emacs-config/modules/magit/Documentation/"))
