;; Setup company irony

(conf:add-module-to-path "company-irony")

(require 'company-irony)

(defun setup-irony-company ()
  "Setup irony-company"
  (company-irony-setup-begin-commands)
  (add-to-list 'company-backends 'company-irony)
  (setq company-backends (delete 'company-clang company-backends)))

;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-hook 'irony-mode-hook 'setup-irony-company)

;; Fix company completion inside yasnippet -- more general module?

(defun tab-yas-company ()
  (interactive)
  (if (null company-candidates)
      (if (bound-and-true-p yas/minor-mode)
          (yas-next-field-or-maybe-expand))
    (company-complete-common)))

(defun setup-tab-yas-company ()
  (define-key yas-keymap [tab] 'tab-yas-company))
(add-hook 'yas-minor-mode-hook 'setup-tab-yas-company)
