;; *************************
;; *  General keybindings  *
;; *************************

; Additionnal module-specific keybindings can be defined in other configs/ files.


(global-set-key (kbd "C-q") 'kill-this-buffer)
(global-set-key (kbd "M-e") 'end-of-buffer)
(global-set-key (kbd "M-a") 'beginning-of-buffer)

;; (global-set-key [C-return] 'newline-and-indent)	; Todo: see if useful

;; (global-set-key (kbd "M-$") 'shrink-window)	 ; Todo: see if useful
;; (global-set-key (kbd "M-*") 'enlarge-window)	 ; Todo: see if useful
;; (global-set-key (kbd "M-à") 'shrink-window-horizontally)	 ; Todo: see if useful
;; (global-set-key (kbd "M-)") 'enlarge-window-horizontally)	 ; Todo: see if useful

;; Keybinding              | Description
;; ------------------------|-------------------------------------------------
;; <kbd>C-f</kbd>          | select/mark current line
;; <kbd>C-d</kbd>          | duplicate current line
;; <kbd>C-q</kbd>          | kill buffer
;; <kbd>M-arrow</kbd>      | jump to left/right/up/down buffer

;; ### Helm

;; <kbd>C-x C-f</kbd>      | `helm-find-files`: view and open files
;; <kbd>C-p</kbd>          | `helm-buffer-list`: select/create buffer
;; <kbd>M-f</kbd>          | `helm-occur`: search in current buffer
;; <kbd>M-R</kbd>          | `helm-ag`: select a directory and do a recursive grep-like search

;; ### While in `helm-find-files` (<kbd>C-x C-f</kbd>):

;; <kbd>M-r</kbd>          | start `helm-ag` in selected directory
;; <kbd>C-p</kbd>          | use `find` command in selected directory to search file

;; ### Projectile

;; <kbd>C-c p f</kbd>      | list all the file in the project
;; <kbd>C-c p F</kbd>      | list all files from all opened project
;; <kbd>C-c p s s</kbd>    | runs `helm-ag` (recursive grep) at the root of the project
;; <kbd>C-c p a</kbd>      | switch between files with the same name but different
;;                         | extensions (for example .c/.h)
;; <kbd>C-c p r</kbd>      | runs `query-replace` on all files in the project
;; <kbd>C-c p i</kbd>      | regenerate project file cache (if many file path changed)

;; ### Multiple Cursors

;; <kbd>C-j</kbd>          | add a new cursor to the next point that match the selected region.
;; <kbd>M-j</kbd>          | add a new cursor to the next point that match the selected symbol.
