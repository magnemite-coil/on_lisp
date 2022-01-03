(defun join! (x y)
  (cond ((null x) y)
        ((null (cdr x)) (set-cdr! x y) x)
        (t (join! (cdr x) y) x)))
その後
(setq z '(1 2 3))
として
(join! z z)


(defun set-cdr (l1 l2)
  (cons
    (if (atom l1)
      l1
      (car l1))
    l2))


(setq z '(1 2 3))
(set-cdr z '(100 200))
