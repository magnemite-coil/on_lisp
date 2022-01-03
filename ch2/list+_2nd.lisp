(defun list+ (lst n)
  (mapcar #'(lambda (x)
              (+ x n))
          lst))

(list+ '(1 2 3 4 5) 10000)

(setf (symbol-function 'list+)
      #'(lambda (lst n)
          (mapcar #'(lambda (x)
                      (+ x n))
                  lst)))

