(defun make-adderb (n)
  #'(lambda (x &optional change)
      (if change
        (setq n x)
        (+ x n))))

(setf add10 (make-adderb 10))

(funcall add10 10000)

(funcall add10 20 t)


