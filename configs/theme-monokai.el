(conf:add-module-to-path "monokai" 'custom-theme-load-path)

(add-to-list 'custom-theme-load-path (concat conf:root-path "configs/"))

(load-theme 'monokai t)

(custom-set-faces '(linum ((t (:foreground "#75715E")))))
