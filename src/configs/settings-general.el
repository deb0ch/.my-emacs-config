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
(defalias 'yes-or-no-p 'y-or-n-p)

;; Another way of doing the same thing
;; ;; yes -> y | no -> n
;; (fset 'yes-or-no-p 'y-or-n-p)

(kill-buffer "*scratch*")

;; Setup paren mode
(require 'paren)
(show-paren-mode)

;; Remplace le texte selectionne si on tape
(delete-selection-mode t)

;; Enlever la barre de menu moche et inutile
(menu-bar-mode 0)

;; Stop making annoying ~ files
(setq make-backup-files nil)

;; bind markdown mode to .text, .markdown and .md files
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

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
(custom-set-faces '(linum ((t (:foreground "blue" :weight bold :box nil)))))

;; ido-mode pour choix de fichiers / buffers / commandes plus interactif
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

;; Montre les espaces en fin de ligne
(setq-default show-trailing-whitespace t)

;; Laisser le curseur en place lors d'un defilement par pages.
;; Par defaut, Emacs place le curseur en debut ou fin d'ecran
;; selon le sens du defilement.
(setq scroll-preserve-screen-position nil)

;; Pouvoir utiliser la completion sous emacs en ignorant la casse
(setq completion-ignore-case t)

;; Affiche le numero de ligne et de colonne
(column-number-mode t)
(line-number-mode t)

;; allow selection when using shift + arrow
(setq shift-select-mode t)

;; scroll only one line at a time (large number is normal)
(setq scroll-conservatively 10000)
