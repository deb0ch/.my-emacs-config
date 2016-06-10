(conf:add-module-to-path "company-c-headers")

(require 'company-c-headers)

(defun setup-company-c-headers ()
  (add-to-list 'company-backends 'company-c-headers))

(add-hook 'c-mode-hook 'setup-company-c-headers)
(add-hook 'c++-mode-hook 'setup-company-c-headers)
(add-hook 'objc-mode-hook 'setup-company-c-headers)
