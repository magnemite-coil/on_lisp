(setf (symbol-function 'make-adder)
(funcall #'(lambda (x) (+ x 5)) 100)
(funcall #'(lambda (x) (+ x 5) 100))
      #'(lambda (x)
          (+ x n)))


(setq add2 (make-adder 2))
(setq add10 (make-adder 10))

(funcall add2 10000000)
(funcall add10 (make-adder 5))


(funcall #'(lambda (x)
             (+ x 5))
         100)

((lambda (x)
   (+ x 5)) 100)


(#'(lambda (x) (+ x 5)) 100)
