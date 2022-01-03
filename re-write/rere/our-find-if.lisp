(defun our-find-if (fn lst)
  (if (funcall fn (car lst))
    (car lst)
    (our-find-if fn (cdr lst))))


(our-find-if #'evenp '(1 2 3 4 5))
(our-find-if #'oddp '(1 2 3 4 5))



(setq l '())
(push 'a l)

(defun my-find-if (fn lst &optional (acc '()))
  (if (null lst)
    acc
    (if (funcall fn (car lst))
      (push (car lst) acc)
      (my-find-if fn (cdr lst)))))

(my-find-if #'evenp '(1 2 3 4 5))
(my-find-if #'oddp '(1 2 3 4 5))


(defun our-remove-if (fn lst)
  (if (null lst)
    nil
    (if (funcall fn (car lst))
      (our-remove-if fn (cdr lst))
      (cons (car lst) (our-remove-if fn (cdr lst))))))


(our-remove-if #'evenp '(1 2 3 4 5 6 7))


