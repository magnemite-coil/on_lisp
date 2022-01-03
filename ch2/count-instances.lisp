(defun count-instances (obj lsts)
  (labels ((instances-in (lst)
                         (if (consp lst)
                           (+ (if (eq (car lst) obj)
                                1
                                0)

                              (instances-in (cdr lst)))
                           0)))
    (mapcar #'instances-in lsts)))


(count-instances 'a '((a b c) (d a r p a) (d a r) (a a)))



