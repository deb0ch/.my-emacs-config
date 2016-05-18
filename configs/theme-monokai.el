
(if (not (string= (getenv "TERM") "xterm"))
    (progn
      (conf:add-module-to-path "monokai" 'custom-theme-load-path)
      (add-to-list 'custom-theme-load-path (concat conf:root-path "configs/"))
      (load-theme 'monokai t)
    )
)
