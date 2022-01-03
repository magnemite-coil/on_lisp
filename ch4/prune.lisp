(defun prune (test tree)
  (labels ((rec (tree acc)
                (cond ((null tree)
                       (nreverse acc))

                      ((consp (car tree))
                       (rec (cdr tree)
                            (cons (rec (car tree) nil) acc)))

                      ;; (car tree) がアトム
                      (t (rec (cdr tree)
                              (if (funcall test (car tree))
                                acc
                                (cons (car tree) acc)))))))

    (rec tree nil)))


(prune #'evenp '(1 2 (3 4 5) (6 (7 (8 (9 10)))) 11 12)) ;=> (1 (3 5) ((7 ((9)))) 11)
(prune #'evenp '(1 2 (3 4))) ;=> (1 (3))
(prune #'evenp '(1 2 (3 (4 5) 6) 7 8 (9))) ;=> (1 (3 (5)) 7 (9))

(nreverse '(1 (3 (5)))) ;=> '(((3 (5)) 1)

(nreverse '((9) 7 ((5) 3) 1))

(consp 1)
(evenp 1)


(cons '(3 (5)) '(1))
