(defun list+ (lst n)
  (mapcar #'(lambda (x)
              (+ x n))
          lst))


(list+ '(1 2 3 4 5) 100)



(setq lst '(1 2 3 4 5))
(mapcar #'(lambda (x)
            (+ x 100))
            lst)


(reduce #'+ '(1 2 3 4 5))
