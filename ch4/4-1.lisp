(proclaim '(inline last1 single append1 nconc1 mklist))

(defun last1 (lst)
  (car (last lst)))

(defun single (lst)
  (and (consp lst)
       (not (cdr lst))))

(defun append1 (lst obj)
  (append lst (list obj)))


(defun conc1 (lst obj)
  (nconc lst (list obj)))

(defun mklist (obj)
  (if (consp obj)
    obj
    (list obj)))


(last1 '(1 2 3 4 5))


(single '(1))

(single '(1 2))


(append1 '(1 2 3 4) 'hi)

(setq l '(1 2 3))

(conc1 l 'hi)

(mklist '(1 2 3))
(mklist 'hi)
