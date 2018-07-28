(defun sum-num (limit)
	(loop for i from 1 to limit
		if (or (= 0 (mod i 3))
			   (= 0 (mod i 5)))
		sum i))

(defun euler1 ()
	(print (sum-num 999)))
