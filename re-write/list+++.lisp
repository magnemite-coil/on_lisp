(setf (symbol-function 'list+++)
      #'(lambda (lst n)
          (mapcar #'(lambda (x)
                      (+ x n))
                  lst)))


(setq l '(1 2 3 4 5))

(list+++ l 10000)


(setf (symbol-function 'foo)
      #'(lambda (lst)
          #'(lambda ()
              #'(lambda ()
                  #'(lambda ()
                      (reduce #'+ lst))))))


(setq l '(1 2 3 4 5))

(foo l)
(funcall (foo l))
(funcall (funcall (foo l)))
(funcall (funcall (funcall (foo l))))
(funcall (funcall (funcall (funcall (foo l)))))
(funcall (funcall (funcall (funcall (funcall (foo l))))))
