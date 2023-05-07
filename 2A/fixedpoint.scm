(define (disp x) (display x) (display "\n"))
(define (average x y) (/ (+ x y) 2))
(define (averagedamp f)
  (lambda (x) (average (f x) x)))
(define (fixedpoint f a err)
  (if (> err (abs (- a (f a))))
    a
    (fixedpoint f (f a) err)))
(define (robustfixedpoint f a err)
  (fixedpoint (averagedamp f) a err))

(define (sqrt1 x)
  (robustfixedpoint (lambda (y) (/ x y)) 1.0 .001))

(define (deriv f x h)
  (/ (- (f (+ x h)) (f x)) h))
(define (newton f a h err) 
  (fixedpoint (lambda (x) (- x (/ (f x) (deriv f x h))))
	      a err))

(define (sqrt2 x)
  (newton (lambda (y) (- x (* y y))) 1 .001 .001))

(disp (sqrt1 2))
(disp (sqrt2 2))
