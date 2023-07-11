(define (disp x) (display x) (display "\n"))
(define (plus1 x y) 
  (if (= x 0)
    y
    (plus1 (1- x) (1+ y))))
(define (plus2 x y)
  (if (= x 0)
    y
    (1+ (plus2 (1- x) y))))

(disp (plus1 3 4))
(disp (plus2 3 4))
