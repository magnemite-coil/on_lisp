(defun group (source n)
  (if (zerop n)
    (error "zero length"))

  (labels ((rec (source acc)
                (let ((rest (nthcdr n source)))

                  (if (consp rest)
                    (rec rest (cons (subseq source 0 n) acc))
                    (nreverse (cons source acc))))))

    (if source
      (rec source nil)
      nil)))


(group '(a b c d e f g h i) 1)
(group '(a b c d e f g h i) 2)
(group '(a b c d e f g h i) 3)
(group '(a b c d e f g h i) 4)
(group '(a b c d e f g h i) 5)
(group '(a b c d e f g h i) 6)
(group '() 1)

