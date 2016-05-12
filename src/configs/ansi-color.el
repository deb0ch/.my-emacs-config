;; ****************************************************************
;; *  process color escape sequences as if we were in a terminal  *
;; ****************************************************************

(conf:add-module-to-path "tty-format")

(require 'tty-format)

;; M-x display-ansi-colors to explicitly decode ANSI color escape sequences
(defun display-ansi-colors ()
  (interactive)
  (format-decode-buffer 'ansi-colors))

;; decode ANSI color escape sequences for *.txt or README files
(add-hook 'find-file-hooks 'tty-format-guess)

;; decode ANSI color escape sequences for .log files
(add-to-list 'auto-mode-alist '("\\.log\\'" . display-ansi-colors))
