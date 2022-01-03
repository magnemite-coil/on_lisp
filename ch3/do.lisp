(defun fact (x)
  (do ((n 2 (1+ n))
       (result 1))
    ((< x n) result)

    (setq result (* result n))))


(format t "~A~%"
        (fact 10))

(format t "~A~%"
        (fact 5))

