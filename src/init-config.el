(require 'config-loader)

(when (display-graphic-p)
  (conf:load-config "settings-gui")
)

;; Regular configs

(conf:load-config "settings-general")
(conf:load-config "settings-coding-style")
(conf:load-config "duplicate-region")

;; Modules

(conf:load-config "multiple-cursors")

(provide 'init-config)
