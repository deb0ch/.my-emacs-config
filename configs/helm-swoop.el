;;
;; Convenient way of browsing multiple occurrence of a word in a buffer.
;; This configuration comes from this module's readme.
;;

(conf:add-module-to-path "helm-swoop")

(require 'helm-swoop)

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "M-j") 'helm-swoop)
(global-set-key (kbd "M-J") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-j") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-j") 'helm-multi-swoop-all)

;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-j") 'helm-swoop-from-isearch)

;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-j") 'helm-multi-swoop-all-from-helm-swoop)

;; When doing evil-search, hand the word over to helm-swoop
;; (define-key evil-motion-state-map (kbd "M-j") 'helm-swoop-from-evil-search)

;; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
(define-key helm-swoop-map (kbd "M-m") 'helm-multi-swoop-current-mode-from-helm-swoop)

;; Move up and down like isearch
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
(define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)

;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)

;; If nil, you can slightly boost invoke speed in exchange for text color
(setq helm-swoop-speed-or-color t)

;; Go to the opposite side of line from the end or beginning of line
(setq helm-swoop-move-to-line-cycle t)

;; Optional face for line numbers
;; Face name is `helm-swoop-line-number-face`
(setq helm-swoop-use-line-number-face t)

;; If you prefer fuzzy matching
(setq helm-swoop-use-fuzzy-match t)

;; If you would like to use migemo, enable helm's migemo feature
;(helm-migemo-mode 1)

;; If there is no symbol at the cursor, use the last used words instead.
(setq helm-swoop-pre-input-function
      (lambda ()
	(let (($pre-input (thing-at-point 'symbol)))
	  (if (eq (length $pre-input) 0)
	      helm-swoop-pattern ;; this variable keeps the last used words
	    $pre-input))))
