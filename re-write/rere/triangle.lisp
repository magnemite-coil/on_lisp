(defun triangle (n)
  (labels ((tri (c n)
                (declare (type fixnum n c))

                (if (zerop n)
                  c
                  (tri (the fixnum (+ n c))
                       (the fixnum (1- n))))))
    (tri 0 n)))


(triangle 10)


(defun f (n &optional (c 0))
  (if (zerop n)
    c
    (f (1- n) (+ c n))))


(f 10)
(f 100)
