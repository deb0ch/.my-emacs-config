;; ***********************************
;; *  Settings specific to gui mode  *
;; ***********************************

;; Set default window size in gui mode - customized for i3
(add-to-list 'default-frame-alist '(width . 193)) ; character
(add-to-list 'default-frame-alist '(height . 42)) ; lines

;; do not display again that annoying startup screen
(setq inhibit-startup-message t)

;; Set frame title
(setq frame-title-format "%b (Trolol frame title)")

;; Show file full path in title bar
(setq-default frame-title-format
	      (list '((buffer-file-name " %f"
					(dired-directory
					 dired-directory
					 (revert-buffer-function " %b"
								 ("%b - Dir:  " default-directory)))))))

(menu-bar-mode -1)
(blink-cursor-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode 1)

(global-unset-key (kbd "C-z"))

;; if DEL and Backspace get mixed up
;(normal-erase-is-backspace-mode 1)
