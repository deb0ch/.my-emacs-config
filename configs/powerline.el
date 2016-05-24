;;
;; Powerline
;;

(conf:add-module-to-path "powerline")

(require 'powerline)

(setq powerline-display-buffer-size t)
(setq powerline-display-mule-info nil)
(setq powerline-display-hud t)

(powerline-default-theme)
