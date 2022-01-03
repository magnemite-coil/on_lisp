(proclaim '(optimize speed))

(defun our-length (lst)
  (labels ((rec (lst acc)
                (if (null lst)
                  acc
                  (rec (cdr lst) (1+ acc)))))

    (rec lst 0)))


(our-length '(1 2 3 4 5))
(our-length '(1 1 1 1 1 1 1 1 1))

