;; **************************************************************************
;; *  smartparens: brackets, parenthesis and quotes matching and balancing  *
;; **************************************************************************

(conf:add-module-to-path "dash")
(conf:add-module-to-path "smartparens")

(require 'smartparens-config)

(smartparens-global-mode)

;; (add-hook 'c-mode-hook #'smartparens-mode)
;; (add-hook 'c++-mode-hook #'smartparens-mode)
;; (add-hook 'js-mode-hook #'smartparens-mode)
