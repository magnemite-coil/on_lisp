(defun before (x y lst &key (test #'eql))
  (and lst
       (let ((first (car lst)))
         (cond ((funcall test y first) nil)
               ((funcall test x first) lst)
               (t (before x y (cdr lst) :test test))))))

(before 'a 'b '(0 1 2 c a b))

(defun before (x y lst &key (test #'eql))
  (if (null lst)
    nil
    (let ((first (car lst)))
      (cond ((funcall test y first) nil)
            ((funcall test x first) lst)
            (t (before x y (cdr lst) :test test))))))


