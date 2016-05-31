;;
;; A pdf viewer and editor in emacs
;;

(conf:add-module-to-path "let-alist")
(conf:add-module-to-path "pdf-tools/pdf-tools-0.70")

;; Consider uncommenting these in case of void-definition error:
;; (require 'pdf-cache)
;; (require 'pdf-dev)
;; (require 'pdf-info)
;; (require 'pdf-isearch)
;; (require 'pdf-misc)
;; (require 'pdf-util)
;; (require 'pdf-view)
;; (require 'pdf-virtual)

(require 'pdf-annot)
(require 'pdf-history)
(require 'pdf-links)
(require 'pdf-occur)
(require 'pdf-outline)
(require 'pdf-sync)

(require 'pdf-tools)

(pdf-tools-install)

(setq pdf-view-max-image-width 48000)
