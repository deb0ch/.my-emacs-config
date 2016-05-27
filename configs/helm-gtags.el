;;
;; GNU Global (gtags) interface using Helm
;;

(conf:add-module-to-path "helm-gtags")

(require 'helm-gtags)

;; Enable helm-gtags-mode
(add-hook 'prog-mode-hook 'helm-gtags-mode)
(add-hook 'dired-mode-hook 'helm-gtags-mode)

(setq helm-gtags-path-style 'relative)
(setq helm-gtags-ignore-case t)
(setq helm-gtags-auto-update nil)

;; key bindings
(eval-after-load "helm-gtags"
  '(progn
     (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
;     (define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-select)
     (define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-find-tag)
     (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)
     (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
     (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
     (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
     (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
     (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
     ;(setq helm-gtags-direct-helm-completing t)
     ))
