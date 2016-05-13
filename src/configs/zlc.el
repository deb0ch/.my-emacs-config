;; *********************************************
;; *  zlc: zsh-like completion for minibuffer  *
;; *********************************************

(conf:add-module-to-path "zlc")

(require 'zlc)

(ido-mode nil)
(zlc-mode t)

(let ((map minibuffer-local-map))
    ;;; like menu select
  (define-key map (kbd "<down>")  'zlc-select-next-vertical)
  (define-key map (kbd "<up>")    'zlc-select-previous-vertical)
  (define-key map (kbd "<right>") 'zlc-select-next)
  (define-key map (kbd "<left>")  'zlc-select-previous)

    ;;; reset selection
  (define-key map (kbd "C-c") 'zlc-reset)
  )

;; select completion immediately when Completions buffer is created
(setq zlc-select-completion-immediately t)
