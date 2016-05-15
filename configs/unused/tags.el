;; Tag utility managment

;; @TODO
(setq tags-revert-without-query t)

(defun create-tags (dir-name)
  "Create tags file."
  (interactive (list (read-directory-name "TAGS directory: "
					  conf:default-directory)))
  (setq azkae-default-directory dir-name)
  (shell-command
   (format "cd %s && find %s -type f -regex \".*\\.\\(hh\\|cpp\\|c\\|cc\\|hpp\\|h\\|py\\)\" | etags - && cd -" dir-name dir-name))
  (visit-tags-table dir-name)
  (message (format "TAGS created %s" dir-name))
  )

(global-set-key [f1] 'find-tag)
(global-set-key [(shift f1)] 'pop-tag-mark) ;; also C-c b
(global-set-key [f2] 'create-tags)
(global-set-key (kbd "C-c b") 'pop-tag-mark)
