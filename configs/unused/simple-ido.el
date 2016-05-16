;; ******************
;; * Setup ido-mode *
;; ******************

(require 'ido)

(ido-mode t)

(add-hook 'ido-setup-hook 'ido-my-keys)

(defun ido-my-keys ()
  (define-key ido-completion-map "\t" 'ido-next-match)
  (define-key ido-completion-map (kbd "C-s") 'ido-completion-help)
  (define-key ido-completion-map (kbd "$") 'my-ido-use-bookmark-dir))

(global-set-key (kbd "C-o") 'ido-find-file)
