(define (disp x) (display x) (display "\n"))
(define (sum-init a b)
	(if (> a b)
		0
		(+ a
		(sum-init (+ 1 a) b))))
(disp (sum-init 1 4))
