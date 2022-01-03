(defun count-instances (obj lsts)
  (labels ((instances-in (lst)
                         (if (null lst)
                           0
                           (+ (if (eq obj (car lst)) 1 0)
                              (instances-in (cdr lst))))))
    (mapcar #'instances-in lsts)))


(setq l '((a b c) (a a a) (b c) (a)))

(count-instances 'a l)
