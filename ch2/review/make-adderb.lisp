(defun make-adderb (n)
  #'(lambda (x &optional change)
      (if change
        (setq n x)
        (+ x n))))

(setq addx (make-adderb 1))

(funcall addx 3)


(funcall addx 100 t)

(funcall addx 3)
