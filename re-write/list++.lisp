(defun list++ (lst n)
  (mapcar #'(lambda (x)
              (+ x n))
          lst))


(setq l '(1 2 3 4 5))

(list++ l 1000)
