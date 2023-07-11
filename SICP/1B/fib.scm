(define (disp x) (display x) (display "\n"))
(define (fib n)
  (if (< n 2)
    n
    (+ (fib (- n 1))
       (fib (- n 2)))))


(disp (fib 2))
(disp (fib 3))
(disp (fib 4))
(disp (fib 5))
(disp (fib 6))
