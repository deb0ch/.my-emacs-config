;; Basic key-bindings

(global-set-key [C-return] 'newline-and-indent)
(global-set-key [C-next] (lambda () (interactive) (scroll-up 1)))
(global-set-key [C-prior] (lambda () (interactive) (scroll-down 1)))

(global-set-key (kbd "M-$") 'shrink-window)
(global-set-key (kbd "M-*") 'enlarge-window)
(global-set-key (kbd "M-à") 'shrink-window-horizontally)
(global-set-key (kbd "M-)") 'enlarge-window-horizontally)

(global-set-key (kbd "C-c b") 'pop-tag-mark)

(global-set-key (kbd "C-x DEL") 'ignore)
(global-set-key [C-backspace] 'delete-backward-char)

(global-set-key (kbd "C-q") 'kill-this-buffer)
(global-set-key (kbd "C-p") 'switch-to-buffer)

(global-set-key [f5] 'next-error)
(global-set-key [(shift f5)] 'previous-error)


(global-set-key (kbd "C-c h s") (lambda () (interactive) (profiler-start 'cpu)))
(global-set-key (kbd "C-c h r") 'profiler-report)
