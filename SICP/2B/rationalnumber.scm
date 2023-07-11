(define (disp x) (display x) (display "\n"))

(define (mod x y)
  (- x (* y (floor (/ x y)))))
(define (gcd1 x y)
  (if (= x 0)
    y
    (gcd1 (mod y x) x)))

(define (makerat n d)
  (let ((g (gcd1 n d)))
    (lambda (x) (if (= 0 x) (/ n g) (/ d g)))))
(define (numer x) (x 0))
(define (denom x) (x 1))

(define (+rat x y)
  (define n1 (numer x))
  (define n2 (numer y))
  (define d1 (denom x))
  (define d2 (denom y))
  (makerat (+ (* n1 d2) (* n2 d1))
	   (* d1 d2)))

(define (*rat x y)
  (makerat (* (numer x) (numer y))
	   (* (denom x) (denom y))))

(define (disprat x)
  (display (numer x))
  (display "/")
  (display (denom x))
  (display "\n"))

(define a (makerat 3 4))
(define b (makerat 2 15))
(disprat (+rat a b))
(disprat (*rat a b))

