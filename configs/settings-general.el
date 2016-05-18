;; ********************************
;; * Personal emacs settings
;; ********************************

;; ELPA (Emacs package manager)
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; replace yes-or-no question with y-or-n. Much faster.
(fset 'yes-or-no-p 'y-or-n-p)

(kill-buffer "*scratch*")

;; Enlever la barre de menu moche et inutile
(menu-bar-mode 0)

;; Stop making annoying ~ files
(setq make-backup-files nil)

;; Pouvoir utiliser la completion sous emacs en ignorant la casse
(setq completion-ignore-case t)

;; scroll-preserve-screen-position:
;; laisse le curseur en place lors d'un defilement par pages.
;; Par defaut, Emacs place le curseur en debut ou fin d'ecran
;; selon le sens du defilement.
(setq scroll-preserve-screen-position t
      scroll-margin 2
      scroll-conservatively 10000 ; scroll only one line at a time (large number is normal)
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      scroll-step 1)
(setq-default scroll-up-aggressively 0.01
	      scroll-down-aggressively 0.01)

;; Preview of possible completions in mini-buffer
(icomplete-mode 1)

;; Setup paren mode
(require 'paren)
(show-paren-mode)

;; Automatic indent on Enter key
(global-set-key (kbd "RET") 'newline-and-indent)

;; Remplace le texte selectionne si on tape
(delete-selection-mode t)

;; allow selection when using shift + arrow
(setq shift-select-mode t)

;; Clearer buffer names when two files with the same name are opened
(require 'uniquify)

;; regular comment face even in c-doc comment styles
;; see http://www.gnu.org/software/emacs/manual/html_mono/ccmode.html#Doc-Comments
;; and http://emacs.stackexchange.com/questions/3762/cc-mode-javadoc-comment-colors-in-c-c
(defun my-cc-init-hook ()
  "Initialization hook for CC-mode runs before any other hooks."
  (setq c-doc-comment-style
	'((java-mode . javadoc)
	  (pike-mode . autodoc)
	  (c-mode    . javadoc)
	  (c++-mode  . javadoc)
	 )
  )
  (set-face-foreground 'font-lock-doc-face (face-foreground font-lock-comment-face))
)
(add-hook 'c-initialization-hook 'my-cc-init-hook)

;; Affichage des numéros de ligne
(global-linum-mode 1)
(setq linum-format "%3d \u2502 ")
(if (string= (getenv "TERM") "xterm")
    (set-face-attribute 'linum nil :foreground "blue" :weight 'bold)
)

;; Affiche le numero de ligne et de colonne
(column-number-mode t)
(line-number-mode t)

;; Montre les espaces en fin de ligne
(setq-default show-trailing-whitespace t)



;; ;; kill ring search
;; ;; Just call kill-ring-search and enter your search.
;; ;; M-y and C-y work as usual.  You can also use C-r like in a shell.
;; ;; C-v, M-v, C-n and C-p will scroll the view.
;; (autoload 'kill-ring-search "kill-ring-search"
;;   "Search the kill ring in the minibuffer."
;;   (interactive))
;; (global-set-key "\M-\C-y" 'kill-ring-search)
