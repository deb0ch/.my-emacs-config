(require 'config-loader)

(when (display-graphic-p)
  (conf:load-config "settings-gui")
)

;; Regular configs

(conf:load-config "settings-general")
(conf:load-config "settings-coding-style")
(conf:load-config "duplicate-region")

;; Modules

(conf:load-config "ggtags")
(conf:load-config "markdown-mode")
(conf:load-config "multiple-cursors")
(conf:load-config "undo-tree")
(conf:load-config "ws-butler")

(provide 'init-config)
