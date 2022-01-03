(defun our-remove-if (fn lst)
  (if (null lst)
    nil
    (if (funcall fn (car lst))
      (our-remove-if fn (cdr lst))
      (cons (car lst) (our-remove-if fn (cdr lst))))))


(setf (symbol-function 'our-remove-if)
      #'(lambda (fn lst)
          (if (null lst)
            nil
            (if (funcall fn (car lst))
              (our-remove-if fn (cdr lst))
              (cons (car lst) (our-remove-if fn (cdr lst)))))))


