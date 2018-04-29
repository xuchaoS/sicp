(define (good-enough? last-guess guess)
  (< (abs (/ (- guess last-guess) guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (sqrt-iter3 guess x)
  (define new-guess (improve guess x))
  (if (good-enough? guess new-guess) 
    new-guess
    (sqrt-iter3 new-guess
	        x)))

(sqrt-iter3 1.0 0.000000000000000001)

(sqrt-iter3 1.0 8)

(sqrt-iter3 1.0 1000000000000000000000)
