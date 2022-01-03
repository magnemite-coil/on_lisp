(defun make-adderb (n)
  #'(lambda (x &optional change)
      (if change
        (setq n x)
        (+ n x))))


(setq addx (make-adderb 10))

(funcall addx 5)

(funcall addx 10000000 t)

(funcall addx 2)
