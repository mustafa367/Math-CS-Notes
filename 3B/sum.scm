(define (disp x) (display x) (display "\n"))

(define (atom? x) (not (list? x)))
(define (sum? expr)
  (and (not (atom? expr))
       (eq? (car expr) ('+))))

(define test '(+ 2 x))
(disp (car test))
(define a (car test))
(disp (eq? a '
