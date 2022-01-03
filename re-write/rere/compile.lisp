(defun foo (x)
  (1+ x))

(compiled-function-p #'foo)

(compile 'foo)

(compiled-function-p #'foo)


(compiled-function-p
  (compile nil '(lambda (x)
                  (+ x 2))))


(progn (compile 'bar
                '(lambda (x) (* x 3)))
       (compiled-function-p #'bar))


(defun foo (x)
  (1+ x))





(defun bar (x)
  (* x 2))

(compile 'foo 'bar)



(let ((y 2))
  (defun foo (x)
    (+ x y)))

(compile 'foo)

(compiled-function-p #'foo)


