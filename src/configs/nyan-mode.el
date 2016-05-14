;; ******************************************
;; * nyan-mode: a silly nyan cat scroll bar *
;; ******************************************

(conf:add-module-to-path "nyan-mode")

(require 'nyan-mode)

(nyan-mode 1)
(nyan-start-animation)
(nyan-toggle-wavy-trail)
