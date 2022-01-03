((lambda (x) (* x 2)) 30)


(defun double (x)
  (* x 2))

(setq double 100)

(double double)


(setq x #'append)

(eq (symbol-value 'x) (symbol-function 'append))


(funcall 'x '(1 2 3) '(4 5 6))

(eval 'x '(1 2 3) '(4 5 6))



(setq a 100)

(symbol-value 'a)



(setq b #'append)

(symbol-value 'b)

(boundp 'b)

(fboundp 'b)


(setf (symbol-function 'c) #'append)

(symbol-value 'c)

(boundp 'c)

(fboundp 'c)

(c '(1 2 3) '(4 5 6))


(setf (symbol-function 'hello)
      "hello world")


(setf (symbol-function 'hi)
      (lambda ()
        "hi"))


(defun thank-you ()
  (lambda ()
    "Thank you!!!"))

(thank-you)

(funcall #'thank-you)

(funcall
(funcall #'thank-you))




(funcall 'thank-you)

(type-of thank-you)

(type-of 'thank-you)

(type-of #'thank-you)

(symbol-function 'thank-you)

((lambda () "hei"))

(funcall
  ((lambda () "hei")))

(funcall #'((lambda () "hei")))

