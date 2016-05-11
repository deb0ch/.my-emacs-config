;; **********************
;; *  Configure ggtags  *
;; **********************

; To make it work don't forget to install GNU Global:
; $> sudo apt-get install global

(conf:add-module-to-path "ggtags")

(require 'ggtags)

(add-hook 'c-mode-common-hook
	  (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
	      (ggtags-mode 1))))
