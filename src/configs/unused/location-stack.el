(conf:add-module-to-path "location-stack")

(require 'location-stack)

(global-set-key (kbd "M-,") 'location-stack-goto-previous)
(global-set-key (kbd "M-?") 'location-stack-goto-next)
