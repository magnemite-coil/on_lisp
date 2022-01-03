(defun make-adder (n)
  #'(lambda (x)
      (+ x n)))

(setq add2 (make-adder 2))
(setq add10 (make-adder 10))

(funcall add2 1000)
(funcall add10 1000)


(setf (symbol-function 'make-adder)
      #'(lambda (n)
          #'(lambda (x)
              (+ x n))))



(defun make-adder (n)
  #'(lambda (x &optional change)
      (if change
        (setq n x)
        (+ x n))))





