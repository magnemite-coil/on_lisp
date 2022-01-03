(defun our-find-if (fn lst)
  (if (funcall fn (car lst))
    (car lst)
    (our-find-if fn (cdr lst))))

(our-find-if #'evenp '(1 2 3 4 5 6))
(our-find-if #'evenp '(1 1 1 1 1))
