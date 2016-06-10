;;
;; Init company mode
;;

(conf:add-module-to-path "company-mode")

(require 'company)
(require 'company-template)
(require 'cl-lib) ;; cl-loop

;; Config
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

;; Frontend
(setq company-frontends '(company-pseudo-tooltip-frontend
			  company-preview-if-just-one-frontend
			  company-echo-metadata-frontend))

;; Setup transformers in ignore case mode
(setq company-transformers '(company--sort-best-candidates))

(defun company--sort-best-candidates (candidates)
  (let ((ignore-case (company-call-backend 'ignore-case))
	(prefix (company-call-backend 'prefix)))
    (setq prefix (or (car-safe prefix) prefix))
    (when (and ignore-case
	       (not (string= prefix "")))
      (let ((best-candidates (cl-loop for candidate in candidates
				      when (string-prefix-p prefix candidate)
				      collect candidate)))
	(setq candidates (append best-candidates
				 (cl-remove-if
				  (lambda (candidate)
				    (string-prefix-p prefix candidate))
				  candidates)))))
    candidates))

;; Hook
(dolist (hook (list
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               'lisp-interaction-mode-hook
               'scheme-mode-hook
               'java-mode-hook
               'c-mode-hook
               'c++-mode-hook
               'haskell-mode-hook
               'asm-mode-hook
               'emms-tag-editor-mode-hook
               'sh-mode-hook
               ))
  (add-hook hook 'company-mode))

(defun cc-company-setup ()
  (setq company-backends (delete 'company-semantic company-backends)))

(add-hook 'c-mode-hook 'cc-company-setup)
(add-hook 'c++-mode-hook 'cc-company-setup)

;; Shortcuts

(global-set-key (kbd "M-RET") 'company-complete)

;; Faces

;; (defun company--set-faces (frame)
;;   (with-selected-frame frame
;;     (set-face-attribute 'company-echo-common nil :underline t :foreground nil)
;;     (set-face-attribute 'company-preview nil :inherit 'shadow :foreground nil :background nil)
;;     (set-face-attribute 'company-preview-common nil :inherit 'company-preview :underline t :background "LightSteelBlue3" :foreground "dark slate gray")
;;     (set-face-attribute 'company-scrollbar-bg nil :inherit 'company-tooltip :background "SteelBlue3")
;;     (set-face-attribute 'company-scrollbar-fg nil :background "DeepSkyBlue4")
;;     (set-face-attribute 'company-template-field nil :background "DeepSkyBlue3" :foreground "black")
;;     (set-face-attribute 'company-tooltip nil :background "LightSteelBlue1" :foreground "dark slate gray")
;;     (set-face-attribute 'company-tooltip-annotation nil :inherit 'company-tooltip :foreground "slate gray")
;;     (set-face-attribute 'company-tooltip-common nil :inherit 'company-tooltip :underline t :foreground nil)
;;     (set-face-attribute 'company-tooltip-common-selection nil :inherit 'company-tooltip-selection :underline t :foreground nil)
;;     (set-face-attribute 'company-tooltip-selection nil :inherit 'company-tooltip :background "LightSteelBlue3")
;;     ))

;; (company--set-faces (selected-frame))
;; (add-hook 'after-make-frame-functions 'company--set-faces)
