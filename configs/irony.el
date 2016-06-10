;; configure irony mode

(conf:add-module-to-path "irony")
;(conf:add-module-to-path "flycheck-irony")

(require 'irony)
(require 'irony-cdb)

(add-hook 'c-mode-hook (lambda ()
			 (if (not (equal major-mode 'glsl-mode))
			     (irony-mode))))
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; (eval-after-load 'flycheck
;;   '(progn
;;      (require 'flycheck-irony)
;;      (add-hook 'flycheck-mode-hook #'flycheck-irony-setup)))
