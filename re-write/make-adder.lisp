(defun make-adder (n)
  #'(lambda (x)
      (+ x n)))


(setq add2 (make-adder 2))
(setq add10 (make-adder 10))


(funcall add2 1000)
(funcall add10 1)


(compile 'make-adder)

(compiled-function-p (make-adder 2))
