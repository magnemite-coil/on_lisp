(let ((y 7))
  (defun scope-test (x)
    (list x y)))


(scope-test 10)

(let ((y 1000))
  (scope-test 10))


