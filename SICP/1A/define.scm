(define (disp x)
  (display x)
  (display "\n")
  )

(define A (* 5 5))
(disp A)

(define (sq1 x) (* x x))
(disp (sq1 5))

(define sq2 (lambda (x) (* x x)))
(disp (sq2 5))
