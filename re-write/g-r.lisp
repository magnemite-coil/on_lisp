(defun good-reverse (lst &optional (acc nil))
  (if (null lst)
    acc
    (good-reverse (cdr lst) (cons (car lst) acc))))


(good-reverse '(a b c d e f))

(setq l '(a b c d e f))

(good-reverse l)


