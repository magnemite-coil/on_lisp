(defun fun (x)
  (list 'a (expt (car x) 2)))

(setq lst '(5 10 15 20))


(defun imp (x)
  (let (y sqr)
    (setq y (car x))
    (setq sqr (expt y 2))
    (list 'a sqr)))

