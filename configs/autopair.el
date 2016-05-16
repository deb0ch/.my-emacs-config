;;
;; Autopair
;;

(defvar conf:force-autopair t
  "Force use of autopair over electric-pair-mode.
   See http://sourceforge.net/p/cc-mode/mailman/message/34384301/")

(if (or (version< emacs-version "24.4")
        conf:force-autopair)
    (progn
      (conf:add-module-to-path "autopair")

      (require 'autopair)

      (autopair-global-mode t)
      (setq autopair-autowrap t)
      (setq autopair-blink nil)

;      (conf:diminish 'autopair-mode)
      )
  (electric-pair-mode))
