(define (good-enough? last-guess guess)
  (< (abs (/ (- guess last-guess) guess)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter last-guess guess x)
  (if (good-enough? last-guess guess) 
    guess
    (sqrt-iter guess
	       (improve guess x)
	       x)))

(define (sqrt-iter2 guess x)
  (define new-guess (improve guess x))
  (if (good-enough? guess new-guess) 
    new-guess
    (sqrt-iter2 new-guess
	        x)))

(sqrt-iter 0 1.0 0.0000000000000001)

(sqrt-iter 0 1.0 100000000000000000000)

(sqrt-iter2 1.0 0.0000000000000001)

(sqrt-iter2 1.0 100000000000000000000)
