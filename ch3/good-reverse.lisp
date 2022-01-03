(defun good-reverse (lst)
  (labels ((rev (l acc)
                (if (null l)
                  acc
                  (rev (cdr l) (cons (car l) acc)))))
    (rev lst nil)))

