(defun triangle (n)
  (labels ((tri (c n)
                (declare (type fixnum c n))
                (if (zerop n)
                  c
                  (tri (the fixnum (+ c n))
                       (the fixnum (1- n))))))
    (tri 0 n)))


(triangle 10)
(triangle 100)
(triangle 3)
