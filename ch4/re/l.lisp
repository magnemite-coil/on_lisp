(defun longer (x y)
  (labels ((compare (x y)
                    (and (consp x)
                         (or (null y)
                             (compare (cdr x) (cdr y))))))

    (if (and (listp x) (listp y))
      (compare x y)
      (> (length x) (length y)))))


(longer #(1 2 3) #(1 2))
(longer #(1 2 3) #(1 2 3 4 5))


(longer '(1 2 3) '(1 2))
(longer '(1 2 3) '(1 2 3 4 5))



(longer #(1 2 3) '(1 2))
