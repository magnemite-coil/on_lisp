(defun 50th (lst)
  (nth 49 lst))


(proclaim '(inline 50th))


(compiled-function-p '50th)

(defun foo (lst)
  (+ (50th lst) 1))

(defun foo (lst)
  (+ (nth 49 lst) 1))
