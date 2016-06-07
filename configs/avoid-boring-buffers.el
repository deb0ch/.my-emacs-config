;;
;; Avoid useless buffers when cycling arround
;;

(require 'cl)

(defvar boring-buffers
  '("\\*.*\\*"
    "COMMIT_EDITMSG")
  "List of boring buffers regexp")

(defun is-buffer-valid (buffer-name)
  (let ((valid-buffer t))
    (loop for boring-buffer in boring-buffers do
          (when (string-match boring-buffer buffer-name)
            (setq valid-buffer nil)))
    valid-buffer))

(defun contains-valid-buffer (buffer-list)
  (let ((valid-buffer nil))
    (loop for buffer in buffer-list do
          (when (is-buffer-valid (buffer-name buffer))
            (setq valid-buffer t)))
    valid-buffer))

(defun skip-temp-buffers (func)
  (if (contains-valid-buffer (buffer-list))
      (while (not (is-buffer-valid (buffer-name)))
        (funcall func))))

(defun next-buffer-avoid-boring ()
  (interactive)
  (next-buffer)
  (skip-temp-buffers 'next-buffer))

(defun prev-buffer-avoid-boring ()
  (interactive)
  (previous-buffer)
  (skip-temp-buffers 'previous-buffer))

(defun kill-this-buffer-avoid-boring ()
  (interactive)
  (kill-this-buffer)
  (when (not (is-buffer-valid (buffer-name)))
    (skip-temp-buffers 'previous-buffer)))

(global-set-key [remap next-buffer] 'next-buffer-avoid-boring)
(global-set-key [remap previous-buffer] 'prev-buffer-avoid-boring)
(global-set-key [remap kill-this-buffer] 'kill-this-buffer-avoid-boring)
