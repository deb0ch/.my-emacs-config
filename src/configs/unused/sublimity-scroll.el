(conf:add-module-to-path "sublimity")

(require 'sublimity-scroll)

(defun smooth-scroll (lines)
  (sublimity-scroll--vscroll-effect lines))
