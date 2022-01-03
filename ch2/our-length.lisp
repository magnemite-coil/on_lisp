(defun our-length (lst)
  (if (null lst)
    0
    (1+ (our-length (cdr lst)))))


(our-length '(1 2 3 4 5))
(our-length '(1 2 3 4 5 10 1 1 1 1 1))
