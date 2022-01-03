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

(group '(a b c d e f g) 2) ;=> ((A B) (C D) (E F) (G))
(group '(a b c d e f g) 3) ;=> ((A B C) (D E F) (G))
(group '(a b c d e f g) 4) ;=> ((A B C D) (E F G))
(group '(a b c d e f g) 0) ;>> *** - zero length



(nthcdr 2 '(1 2 3 4 5 6 7 8))
(nthcdr 3 '(1 2 3 4 5 6 7 8))
(nthcdr 4 '(1 2 3 4 5 6 7 8))
(nthcdr 5 '(1 2 3 4 5 6 7 8))


(nthcdr 5 '(1 2 3)) ;=> NIL

