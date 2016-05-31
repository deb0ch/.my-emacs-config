;;
;; display vcs file state close to linum + other git vcs features
;;

(conf:add-module-to-path "git-gutter")

(require 'git-gutter)

(global-git-gutter-mode t)
(setq git-gutter:disabled-modes '(image-mode))
;(add-hook 'ruby-mode-hook 'git-gutter-mode) ;; If you enable git-gutter-mode for some modes

(setq git-gutter:update-interval 2)
(add-to-list 'git-gutter:update-hooks 'focus-in-hook)
(add-to-list 'git-gutter:update-commands 'other-window)

(git-gutter:linum-setup)
(setq git-gutter:window-width 2)
(setq git-gutter:modified-sign "ᨈ ") ;; "≠" "⁖" "Δ" "⌘" "➜" "ᨊ"
(setq git-gutter:added-sign "✚ ")    ;; multiple character is OK
(setq git-gutter:deleted-sign "✘ ")  ;; "✖"
;(setq git-gutter:unchanged-sign " ")
;(setq git-gutter:separator-sign " ")
;(setq git-gutter:always-show-separator t)

;; Hide gutter if no changes
(setq git-gutter:hide-gutter nil)

;; Show signs at gutter by visual lines instead of logical lines
(setq git-gutter:visual-line nil)

(setq git-gutter:diff-option "HEAD") ;; "HEAD": show staged and unstaged changes

;; first character should be a space
(setq git-gutter:lighter " GitG")

;; Ammount of log messages. 0 = none 4 = maximum
(setq git-gutter:verbosity 4)

;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)

;(global-set-key (kbd "C-x C-g") 'git-gutter:toggle)
;(global-set-key (kbd "C-x v =") 'git-gutter:popup-hunk)

;; Stage current hunk
;(global-set-key (kbd "C-x v s") 'git-gutter:stage-hunk)

;; Revert current hunk
;(global-set-key (kbd "C-x v r") 'git-gutter:revert-hunk)

;; Mark current hunk
;(global-set-key (kbd "C-x v SPC") #'git-gutter:mark-hunk)

;; Use for 'Git'(`git`), 'Mercurial'(`hg`), 'Bazaar'(`bzr`), and 'Subversion'(`svn`) projects
;(setq git-gutter:handled-backends (setq git hg bzr svn))

;; Don't ask me!!
;(setq git-gutter:ask-p nil)
