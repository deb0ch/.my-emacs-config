(require 'config-loader)

;; Regular configs

(conf:load-config "ansi-color")
(conf:load-config "avoid-boring-buffers")
(conf:load-config "duplicate-region")
(conf:load-config "ido-mode")
(conf:load-config "linum-off")
(conf:load-config "settings-coding-style")
(conf:load-config "settings-general")
(conf:load-config "settings-keybindings")
(conf:load-config "ttypaste-mode")

(when (display-graphic-p)
  (conf:load-config "nyan-mode")
  (conf:load-config "settings-gui")
)

;; Modules

(conf:load-config "autopair")
(conf:load-config "expand-region")
(conf:load-config "dtrt-indent")
(conf:load-config "ggtags")
;(conf:load-config "helm")
;(conf:load-config "helm-ag")
(conf:load-config "helm-descbinds")
(conf:load-config "markdown-mode")
(conf:load-config "markdown-preview-mode")
(conf:load-config "move-where-i-mean")
(conf:load-config "multiple-cursors")
(conf:load-config "powerline")
(conf:load-config "undo-tree")
(conf:load-config "ws-butler")

;; theme

;(conf:load-config "8color-theme")
(conf:load-config "theme-monokai")

(provide 'init-config)
