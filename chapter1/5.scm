(define (p) (p))

(define (test  x y)
  (if (= x 0)
    0
    y))

(test 0 (p))

; p是一个无限递归过程，一旦执行解释器将挂起，如果是正则序，p不会被执行，应用序则会被执行
