(defun filter (fn lst)
  (let ((acc nil))

    (dolist (x lst)
      (let ((val (funcall fn x)))
        (if val
          (push val acc))))
    (nreverse acc)))

(filter #'(lambda (x)
            (if (numberp x)
              (1+ x)))
        '(a 1 2 b 3 c 4 d))


;; リストを2つ渡したときに予想外の挙動を示すため、オプショナルパラメータは危険
(defun filter (fn lst &optional (acc nil))
  (dolist (x lst)
    (if (funcall fn x)
      (push (funcall fn x) acc)))
  (nreverse acc))

(filter #'(lambda (x)
            (if (numberp x)
              (1+ x)))
        '(a 1 2 b 3 c 4 d)
        '(a 1 2 b 3 c 4 d))


