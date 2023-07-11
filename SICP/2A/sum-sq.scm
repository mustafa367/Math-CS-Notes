(define (disp x) (display x) (display "\n"))
(define (square x) (* x x))
(define (sum-sq a b)
	(if (> a b)
		0
		(+ (square a)
		(sum-sq (+ 1 a) b))))
(disp (sum-sq 1 4))
