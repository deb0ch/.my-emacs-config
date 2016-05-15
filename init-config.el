(require 'config-loader)

;; Regular configs

(conf:load-config "ansi-color")
(conf:load-config "duplicate-region")
(conf:load-config "settings-general")
(conf:load-config "settings-coding-style")

(when (display-graphic-p)
  (conf:load-config "nyan-mode")
  (conf:load-config "settings-gui")
  (conf:load-config "theme-monokai")
)

;; Modules

(conf:load-config "dtrt-indent")
(conf:load-config "ggtags")
(conf:load-config "markdown-mode")
(conf:load-config "markdown-preview-mode")
(conf:load-config "multiple-cursors")
(conf:load-config "smartparens")
(conf:load-config "undo-tree")
(conf:load-config "ws-butler")

(provide 'init-config)
