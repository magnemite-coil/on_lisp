(let ((cnt 0))
  (setf (symbol-function 'new-id)
        #'(lambda ()
            (incf cnt)))

  (setf (symbol-function 'reset-id)
        #'(lambda ()
            (setq cnt 0))))


(new-id)

(loop repeat 10
      do (new-id))

(new-id)
