(let ((x 100000))
  (defun scope-test(y)
    (list x y)))

(scope-test 3)


(defun addn (n)
  #'(lambda (x)
      (+ x n)))


(setq add2 (addn 2))
(setq add1000 (addn 1000))


(add2 50)
(add1000 3)


(funcall add2 50)
(funcall add1000 3)
