(defun find2 (fn lst)
  (if (null lst)
    nil
    (let ((val (funcall fn (car lst))))
      (if val
        (values (car lst) val)
        (find2 fn (cdr lst))))))



(find2 #'evenp '(1 2 3 4 5))
;=> 2 ;
;=> T

(find-if #'evenp '(1 2 3 4 5)) ;=> 2

(defun find2 (fn lst)
  (if (null lst)
    nil
    (let ((val (funcall fn (car lst))))
      (if val
        (values (car lst) val)
        (find2 fn (cdr lst))))))


