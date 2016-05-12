
(conf:add-module-to-path "ws-butler")

(require 'ws-butler)

(add-hook 'prog-mode-hook 'ws-butler-mode)

;(conf:diminish 'ws-butler-mode)
