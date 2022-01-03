(setf (symbol-function 'double)
#'(lambda (x) (* x 2)))


(double 100)

