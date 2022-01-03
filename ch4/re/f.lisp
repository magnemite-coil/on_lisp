(defun filter (fn lst)
  (let ((acc nil))

    (dolist (x lst)
      (let ((val (funcall fn x)))
        (if val
          (push val acc))))

    (nreverse acc)))


(filter #'(lambda (x)
            (if (numberp x)
              (1+ x)))
        '(1 a b 2 3 c d 4 e))


