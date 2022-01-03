(defun find2 (fn lst)
  (if (null lst)
    nil
    (let ((val (funcall fn (car lst))))
      (if val
        (values (car lst) val)
        (find2 fn (cdr lst))))))


(find2 #'(lambda (x)
           (zerop (mod x 3)))
       '(1 2 3 4 5 6 7 8 9 10))


(defun find-all (fn lst &optional (acc nil))
  (if (null lst)
    (nreverse acc)
    (if (funcall fn (car lst))
      (find-all fn (cdr lst) (cons (car lst) acc))
      (find-all fn (cdr lst) acc))))


(find-all #'(lambda (x)
              (zerop (mod x 3)))
              '(0 1 2 3 4 5 6 7 8 9 10))

(find-all #'evenp '(1 2 3 4 5 6 7 8 9 10))
