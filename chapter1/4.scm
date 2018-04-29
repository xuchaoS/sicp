(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;根据b的值觉得计算方法，如果b>0，计算a+b，否则计算a-b
