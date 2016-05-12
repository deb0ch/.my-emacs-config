
(eval-when-compile
  (require 'cl))

(defvar conf:default-directory default-directory
  "Default directory. May be changed by modules.")

(defvar conf:root-path (file-name-directory load-file-name)
  "Root path of conf directory")

(defun conf:load-config(config-name)
  "Load a config if it exists"
  (let ((full-config-name (format "%s/configs/%s.el" conf:root-path config-name)))
    (if (file-exists-p full-config-name)
	(progn
	  (condition-case err
	      (let ((except-value
		     (catch 'load-module-exception
		       (load-file full-config-name)
		       nil)))
                (when except-value
                  (message (format "Unable to load %s config: %s" module-name except-value)))
		t)
	    (error
	     (message "/!\\ Error while loading config %s: %s" config-name (error-message-string err))))
	  )
      (message (format "Config %s not found" config-name)))))

(defun conf:add-module-to-path(path &optional load-list)
  "Add module path to the load-path"
  (when (not load-list)
    (setq load-list 'load-path))
  (let ((full-module-name (format "%s/modules/%s" conf:root-path path)))
    (add-to-list load-list full-module-name)))

(provide 'config-loader)
