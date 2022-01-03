(defun longer (x y)
  (labels ((compare (x y)
                    (and (consp x)
                         (or (null y)
                             (compare (cdr x) (cdr y))))))

    (if (and (listp x) (listp y))
      (compare x y)
      (> (length x) (length y)))))


(longer '(1) '(2 1))
(longer #(a c d a d s d) #(a s d d))

(longer 'a '(a b))
(longer 'a '(a b))
(longer #(1) #(2 1))
(longer '(1) '(2 1))
