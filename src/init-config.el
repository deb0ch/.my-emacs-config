(require 'config-loader)

(when (display-graphic-p)
  (conf:load-config "settings-gui")
)

(conf:load-config "settings-general")
(conf:load-config "settings-coding-style")

(provide 'init-config)
