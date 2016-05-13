;; *********************************
;; *  Activate dtrt-indent module  *
;; *********************************

(conf:add-module-to-path "dtrt-indent")

(require 'dtrt-indent)

(dtrt-indent-mode)

(dtrt-indent-adapt)
