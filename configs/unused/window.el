;; Window utility stuff

(defun toggle-window-dedicated ()
  "Toggle whether the current active window is dedicated or not"
  (interactive)
  (message
   (if (let (window (get-buffer-window (current-buffer)))
	 (set-window-dedicated-p window
				 (not (window-dedicated-p window))))
       "Window '%s' is dedicated"
     "Window '%s' is normal")
   (current-buffer)))

(defun grb-special-display (buffer &optional data)
  (let ((window grb-temporary-window))
    (with-selected-window window
      (switch-to-buffer buffer)
      window)))

(defun set-temporary-window ()
  (interactive)
  (message "This window is now used for temporary buffers")
  (setq special-display-regexps
	'("^\\*Completions\\*$"
	  "^\\*Buffer List\\*$"
	  "^\\*Help\\*$"
	  "^\\*tmp\\*$"
	  "^\\*Ido Completions\\*$"
	  "^\\*Process List\\*$"
	  "^\\*grep\\*$"
	  "^\\*Apropos\\*$"
	  "^\\*elisp macroexpansion\\*$"
	  "^\\*local variables\\*$"
	  "^\\*Compile-Log\\*$"
	  "^\\*Quail Completions\\*$"
	  "^\\*Occur\\*$"
	  "^\\*frequencies\\*$"
	  "^\\*compilation\\*$"
	  "^\\*Locate\\*$"
	  "^\\*Colors\\*$"
	  "^\\*tumme-display-image\\*$"
	  "^\\*SLIME Description\\*$"
	  "^\\*.* output\\*$" ; tex compilation buffer
	  "^\\*TeX Help\\*$"
	  "^\\*Shell Command Output\\*$"
	  "^\\*Async Shell Command\\*$"
	  "^\\*Backtrace\\*$"))

  (setq grb-temporary-window (frame-selected-window))
  (setq special-display-function #'grb-special-display))

(defun unset-temporary-window ()
  (interactive)
  (message "Temporary window disabled")
  (setq special-display-regexps nil)
  (setq grb-temporary-window nil)
  (setq special-display-function nil)
  )

(defun azkae-setup ()
  (interactive)
  (split-window-vertically)
  (enlarge-window 20)
  (windmove-down)
  (set-temporary-window)
  (switch-to-buffer "*tmp*")
  (windmove-up)
  (message "Setup completed")
  )

(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;; Fix windmove in org-mode
(add-hook 'org-mode-hook
          (lambda()
            (define-key org-mode-map [M-left] 'windmove-left)
            (define-key org-mode-map [M-right] 'windmove-right)
            (define-key org-mode-map [M-up] 'windmove-up)
            (define-key org-mode-map [M-down] 'windmove-down)))

(global-set-key (kbd "<f10>")
		  (lambda()(interactive)(setq azkae-old-window (frame-selected-window))(switch-to-buffer-other-window "*compilation*")(select-window azkae-old-window)))
(global-set-key [f11] 'set-temporary-window)
(global-set-key [(shift f11)] 'unset-temporary-window)
(global-set-key [f12] 'toggle-window-dedicated)
