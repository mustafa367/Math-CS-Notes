(define (disp x) (display x) (display "\n"))

(define (map f l)
  (if (null? l)
    #nil
    (cons (f (car l))
	  (map f (cdr l)))))
(define (scalelist s l) (map (lambda (x) (* s x)) l))

(define A (list 1 2 3 4))
(define B (scalelist 2 A))
(disp B)

(define (displist1 l) (map disp l))
(define C (list "Line 1" "Row 2" "Conclusion"))
(displist1 C)

(define (foreach f l)
  (cond ((null? l) #nil)
    (else (f (car l))
	  (foreach f (cdr l)))))
(define (displist2 l) (foreach disp l))
(displist2 C)
