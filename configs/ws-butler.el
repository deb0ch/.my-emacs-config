
(conf:add-module-to-path "ws-butler")

(require 'ws-butler)

(add-hook 'prog-mode-hook 'ws-butler-mode)

(ws-butler-global-mode)

;(conf:diminish 'ws-butler-mode)
