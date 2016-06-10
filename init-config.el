(require 'config-loader)

;; Regular

(conf:load-config "avoid-boring-buffers")
(conf:load-config "display-ansi-colors")
(conf:load-config "duplicate-region")
(conf:load-config "highlight-symbol")
(conf:load-config "ido-mode")
(conf:load-config "linum-off")
(conf:load-config "settings-coding-style")
(conf:load-config "settings-general")
(conf:load-config "settings-keybindings")

(when (display-graphic-p)
  (conf:load-config "nyan-mode")
  (conf:load-config "pdf-tools")
  (conf:load-config "settings-gui")
)

(when (not (display-graphic-p))
  (conf:load-config "ttypaste-mode")
)

;; Modules

(conf:load-config "autopair")
(conf:load-config "cmake-mode")
(conf:load-config "dtrt-indent")
(conf:load-config "expand-region")
(conf:load-config "git-gutter")
(conf:load-config "ggtags")
(conf:load-config "helm")
(conf:load-config "helm-ag")
(conf:load-config "helm-descbinds")
(conf:load-config "helm-gtags")
(conf:load-config "helm-swoop")
(conf:load-config "magit")
(conf:load-config "markdown-mode")
(conf:load-config "markdown-preview-mode")
(conf:load-config "move-where-i-mean")
(conf:load-config "multiple-cursors")
(conf:load-config "powerline")
(conf:load-config "projectile")
(conf:load-config "undo-tree")
;(conf:load-config "with-editor")
(conf:load-config "ws-butler")

(conf:load-config "company")
(conf:load-config "irony")
(conf:load-config "company-irony")
(conf:load-config "company-c-headers")
(conf:load-config "company-cc")

;; theme

;(conf:load-config "8color-theme")
(conf:load-config "theme-monokai")

(provide 'init-config)
