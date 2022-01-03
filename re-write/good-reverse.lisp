(defun good-reverse (lst)
  (labels ((rev (lst acc)
                (if (null lst)
                  acc
                  (rev (cdr lst) (cons (car lst) acc)))))
    (rev lst nil)))


(good-reverse '(a b c d e f))


(setq l '(a b c d e f))

(good-reverse l)


(defun better-reverse (lst &optional (acc nil))
  (if (null lst)
    acc
    (better-reverse (cdr lst) (cons (car lst) acc))))


(better-reverse l)
