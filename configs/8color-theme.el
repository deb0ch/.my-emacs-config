;;
;; Default theme when in 256color.
;;

(if (string= (getenv "TERM") "xterm-256color")
    (progn
      (set-face-attribute 'font-lock-builtin-face nil :foreground "color-39" :weight 'bold)
      (set-face-attribute 'font-lock-constant-face nil :foreground "magenta")
      (set-face-attribute 'font-lock-function-name-face nil :foreground "blue" :weight 'bold)
      (set-face-attribute 'font-lock-keyword-face nil :foreground "brightcyan" :weight 'bold)
      (set-face-attribute 'font-lock-negation-char-face nil :foreground "brightred")
      (set-face-attribute 'font-lock-preprocessor-face nil :foreground "brightblue")
      (set-face-attribute 'font-lock-regexp-grouping-backslash nil :foreground "color-228")
      (set-face-attribute 'font-lock-regexp-grouping-construct nil :foreground "color-229")
      (set-face-attribute 'font-lock-string-face nil :foreground "green")
      (set-face-attribute 'font-lock-type-face nil :foreground "green")
      (set-face-attribute 'font-lock-variable-name-face nil :foreground "yellow")

      (set-face-attribute 'linum nil :foreground "blue" :weight 'bold)
      (set-face-attribute 'minibuffer-prompt nil :foreground "blue" :weight 'bold)
      (set-face-attribute 'region nil :background "blue" :foreground "white")

      ;; Todo: check if using powerline

      (set-face-attribute 'powerline-active1 nil :inherit 'mode-line :background "grey22" :foreground "white")
      (set-face-attribute 'powerline-inactive1 nil :inherit 'mode-line-inactive :background "grey11" :foreground "white")
    )
)
