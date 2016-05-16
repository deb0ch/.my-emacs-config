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

(setq smartparens-enabled-hook nil)
(setq sp-highlight-pair-overlay nil)
(setq sp-highlight-wrap-overlay nil)
(setq sp-autoescape-string-quote t) ; only in sp versions <= 1.6.3

(defun my-open-block-c-mode-insert (id action context)
  (when (eq action 'insert)
    (newline)
    (newline)
    (indent-according-to-mode)
    (previous-line)
    (indent-according-to-mode)))

;; Todo: finish
(defun my-open-block-c-mode-wrap (id action context)
  (when (eq action 'wrap)
    (sp-beginning-of-sexp)
    ))

;; we use :add to keep any global handlers. If you want to replace
;; them, simply specify the "bare list" as an argument:
;; '(my-open-block-c-mode)
(sp-local-pair 'c-mode "{" nil :post-handlers '(:add my-open-block-c-mode-insert))
(sp-local-pair 'c-mode "{" nil :post-handlers '(:add my-open-block-c-mode-wrap))

;; (sp-with-modes '(c++-mode c-mode java-mode)
;;   (sp-local-pair "{" nil :post-handlers '(("||\n[i]" "RET"))))


(sp-local-pair 'c++-mode "/*" "*/" :post-handlers '((" | " "SPC")
                                                    ("* ||\n[i]" "RET")))
