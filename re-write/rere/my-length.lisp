(defun my-length (lst &optional (acc 0))
  (if (null lst)
    acc
    (my-length (cdr lst) (1+ acc))))


(my-length '(1 2 3 4 5 6 7 8 9))


(defun triangle (n &optional (c 0))
  (if (<= n 0)
    c
    (triangle (1- n) (+ c n))))


(triangle 10)
(triangle 100)
