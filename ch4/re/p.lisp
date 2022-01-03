(defun prune (test tree)
  (labels ((rec (tree acc)
                (cond ((null tree) (nreverse acc))

                      ((consp (car tree)) (rec (cdr tree)
                                               (cons (rec (car tree) nil) acc)))

                      (t (rec (cdr tree)
                              (if (funcall test (car tree))
                                acc
                                (cons (car tree) acc)))))))

    (rec tree nil)))


(prune #'evenp '(1 2 (3 4 (5) 6) 7 8 9 10)) ;=> (1 (3 (5)) 7 9)
