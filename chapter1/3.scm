(define (max2 a b c)
  (define m1 (if (> a b) a b))
  (define m2 (if (< a b) a b))
  (+ m1 (if (> m2 c) m2 c)))
