(let ((counter 0))

  (defun new-id () (incf counter))
  (defun reset-id () (setq counter 0)))

counter

(new-id)

