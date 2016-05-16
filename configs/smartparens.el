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

(sp-local-pair 'c-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))
(sp-local-pair 'c++-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))

(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(setq smartparens-enabled-hook nil)
(setq sp-highlight-pair-overlay nil)
(setq sp-highlight-wrap-overlay nil)
