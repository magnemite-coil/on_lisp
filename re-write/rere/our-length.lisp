(proclaim '(optimize speed))

(defun our-length (lst)
  (labels ((rec (lst acc)
                (if (null lst)
                  acc
                  (rec (cdr lst) (1+ acc)))))
    (rec lst 0)))


(our-length '(1 2 3 3 a c dd vc d))


(defun our-length (lst &optional (acc 0))
  (if (null lst)
    acc
    (our-length (cdr lst) (1+ acc))))


(our-length '(1 2 3 4 a d c d f))

(our-length '(1 2 3 4 5 6 7 8 9 10))
