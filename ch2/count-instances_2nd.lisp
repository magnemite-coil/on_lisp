(defun count-instances (obj lsts)
  (labels ((instances-in (lst)
                         (if (consp lst)
                           (+ (if (eq obj (car lst))
                                1
                                0)
                              (instances-in (cdr lst)))
                           0)))
    (mapcar #'instances-in lsts)))

(count-instances 'a '((a b c) (d d d) (a a n) (a b b a a a)))


