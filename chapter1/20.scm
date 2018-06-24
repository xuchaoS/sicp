; 正则序
(gcd 206 40)
(gcd 40 (remainder 206 40))
; if 1
(gcd (remainder 206 40) (remainder 40 remainder(206 40)))
; if 3
(gcd 
  (remainder 40 remainder(206 40)) 
  (remainder (remainder 206 40) (remainder 40 remainder(206 40))))
; if 7
(gcd 
  (remainder (remainder 206 40) (remainder 40 remainder(206 40)))
  (remainder 
    (remainder 40 remainder(206 40))
    (remainder (remainder 206 40) (remainder 40 remainder(206 40)))))
; if 14
; 18

; 应用序
(gcd 206 40)
(gcd 40 6) ; 1
(gcd 6 4) ; 2
(gcd 4 2) ; 3
(gcd 2 0) ; 4
; 4
