(defun flatten (x)
  (labels ((rec (x acc)
                (cond ((null x) acc)
                      ((atom x) (cons x acc))
                      (t (rec (car x) (rec (cdr x) acc))))))
    (rec x nil)))


(flatten '((a b c) (((d e f))) (g h) (i) (j k (l (m n)) o p) (q)))

(flatten '(a (b c) ((d e) f)))
(flatten '(a (b c)))
