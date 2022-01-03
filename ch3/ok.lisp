(defun ok (x)
  (nconc (list 'a x) (list 'c)))


(setq lst '(1 2 3 4 5))

(ok lst)


(defun not-ok (x)
  (nconc (list 'a)
         x
         (list 'c)))

(not-ok lst)
