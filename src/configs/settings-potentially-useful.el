;; **********************************************************************
;; * Some settings which seem interesting but that I have not tested yet
;; **********************************************************************

;; Set frame title
(setq frame-title-format "%b (Trolol frame title)")

;; @TODO
(setq c-toggle-auto-newline)

;; Automatic indent on Enter key
(global-set-key (kbd "RET") 'newline-and-indent) 

;; Setup buffer name to be more clear
(require 'uniquify)

;; Fontify org-mode's code blocks
(setq org-src-fontify-natively t)

;; Select lines
(global-set-key (kbd "C-f") "\C-a\C-@\C-e")

;; kill ring search
;; Just call kill-ring-search and enter your search.
;; M-y and C-y work as usual.  You can also use C-r like in a shell.
;; C-v, M-v, C-n and C-p will scroll the view.
(autoload 'kill-ring-search "kill-ring-search"
 "Search the kill ring in the minibuffer."
 (interactive))
(global-set-key "\M-\C-y" 'kill-ring-search)


;; zlc - zsh like completion system to Emacs
(require 'zlc)
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

;; Show file full path in title bar
(setq-default frame-title-format
	      (list '((buffer-file-name " %f"
					(dired-directory
					 dired-directory
					 (revert-buffer-function " %b"
								 ("%b - Dir:  " default-directory)))))))

;; Suppression des espaces en fin de ligne a l'enregistrement
(add-hook 'c++-mode-hook '(lambda ()
  (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook   'c-mode-hook '(lambda ()
  (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))


;; Complete automatiquement ce que vous tapez dans le mini-buffer
(icomplete-mode 1)
