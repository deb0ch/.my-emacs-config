;; Avoid boring buffers

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

(defun --contains-valid-buffer (buffer-list)
  (let ((valid-buffer nil))
    (loop for buffer in buffer-list do
          (when (is-buffer-valid (buffer-name buffer))
            (setq valid-buffer t)))
    valid-buffer))

(defun skip-temp-buffers (func)
  (if (--contains-valid-buffer (buffer-list))
      (while (not (is-buffer-valid (buffer-name)))
        (funcall func))))

(defun my-next-buffer ()
  (interactive)
  (next-buffer)
  (skip-temp-buffers 'next-buffer))

(defun my-prev-buffer ()
  (interactive)
  (previous-buffer)
  (skip-temp-buffers 'previous-buffer))

(defun kill-this-buffer-avoid-boring ()
  (interactive)
  (kill-this-buffer)
  (when (not (is-buffer-valid (buffer-name)))
    (skip-temp-buffers 'previous-buffer)))

(global-set-key [remap next-buffer] 'my-next-buffer)
(global-set-key [remap previous-buffer] 'my-prev-buffer)
(global-set-key [remap kill-this-buffer] 'kill-this-buffer-avoid-boring)
