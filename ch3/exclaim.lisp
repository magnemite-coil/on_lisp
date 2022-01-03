(defun exclaim (expression)
  (append expression '(oh my)))


(exclaim '(lions and tigers and bears))


(nconc * '(goodness))

(exclaim '(fixnum and bignums and float))


(defun exclaim (expression)
  (append expression (list 'oh 'my)))



(defun foo (x)
  (nconc x (list 'oh 'my)))


(setf l '(happy birthday))


(foo l)
l



(setf l2 '(happy halloween))
(exclaim l2)
l2


