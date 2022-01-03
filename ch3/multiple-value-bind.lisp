(multiple-value-bind (q r)
  (truncate 18 7)
  (list q r))


(defun foo (x y z w)
  (values x y z))

(foo 100 2 30 500000000)
