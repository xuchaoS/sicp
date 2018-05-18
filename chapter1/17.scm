(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (double n)
  (+ n n))
(define (halve n)
  (/ n 2))
(define (multi a b)
  (cond ((= b 0) 0)
	((even? b) (double (multi a (halve b))))
	(else (+ a (multi a (- b 1))))))
(define (even? n)
  (= (remainder n 2) 0))


(multi 1 2)
(multi 2 3)
(multi 3 4)
