(defun group (source n)
  (if (zerop n)
    (error "zero length")

    (labels ((rec (source acc)
                  (let ((rest (nthcdr n source)))

                    (if (consp rest)
                      (rec rest (cons (subseq source 0 n) acc))
                      (nreverse (cons source acc))))))

      (if source
        (rec source nil)
        nil))))





(setq l '(a b c d e f g h))
(subseq l 0 2) ;=> (A B)

(group '(a b c d e f g h) 2)
(group '(a b c d e f g h) 3)
(group '(a b c d e f g h) 4)
(group '(a b c d e f g h) 5)
(group 'hi) ;>> error

(group '() 3) ;=> NIL
