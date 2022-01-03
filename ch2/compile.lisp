(defun foo (x) (1+ x))

(compiled-function-p #'foo)

(compile 'foo)


(compiled-function-p #'foo)



(compile nil '(lambda (x) (1- x)))



(compile 'bar '(lambda (x) (+ x 2)))
(compiled-function-p #'bar)



(progn (compile 'baz '(lambda (x) (+ x 10)))
       (compiled-function-p #'baz))


