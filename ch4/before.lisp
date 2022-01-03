(defun before (x y lst &key (test #'eql))
  (and lst
       (let ((first (car lst)))
         (cond ((funcall test y first) nil)
               ((funcall test x first) lst)
               (t (before x y (cdr lst) :test test))))))

(before 'a 'b '(0 1 2 c a b))
(before 'a 'b '(0 1 2 c b a c))

(before 'a 'b '(0 1 2 c b a b a))

(before 'a 'b '(0 1 2 c b a b a) :test #'equalp)
(before 'a 'b '(0 1 2 c a b a) :test #'equalp)

(before 'a 'b '(a))
