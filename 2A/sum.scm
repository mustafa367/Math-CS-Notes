(define (disp x) (display x) (display "\n"))
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term
	    (next a)
	    next
	    b))))

(define (id x) x)
(disp (sum id 1 1+ 4))

(define (square x) (* x x))
(disp (sum square 1 (lambda (x) (+ 1 x)) 4))

(define (f n) (/ 1.0 (* n (+ 2 n))))
(define (4+ x) (+ 4 x))
(define pi (* 8 (sum f 1 4+ 100000)))
(disp pi)
