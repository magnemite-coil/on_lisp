(setf (symbol-function 'make-adder)
      #'(lambda (n)
          #'(lambda (x)
              (+ x n))))

(setq add2 (make-adder 2)
      add10 (make-adder 10))

(funcall add2 5)
(funcall add10 3)


(add2 5)
(funcall add2 10000)






((lambda (x y) (+ x y)) 10 10000)






