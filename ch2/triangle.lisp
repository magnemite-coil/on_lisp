(defun triangle (n)
  (labels ((tri (c n)
                (if (zerop n)
                  c
                  (tri (+ n c) (1- n)))))
    (tri 0 n)))

(triangle 10)
(triangle 3)
(triangle 100)

