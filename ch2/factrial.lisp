(defun factrial (n)
  (labels ((f (c n)
              (if (zerop n)
                c
                (f (* c n) (1- n)))))
    (f 1 n)))

(factrial 10)
(factrial 100)
(factrial 5)

