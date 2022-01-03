(defun bad-reverse (lst)
  (let* ((len (length lst))
         (ilimit (truncate (/ len 2))))

    (do ((i 0 (1+ i))
         (j (1- len) (1- j)))

      ((>= i ilimit))

      (progn
        (format t "len : ~A~%" len)
        (format t "ilimit : ~A~%" ilimit)
        (format t "i : ~A~%" i)
        (format t "j : ~A~%" j)

        (rotatef (nth i lst) (nth j lst))))))

