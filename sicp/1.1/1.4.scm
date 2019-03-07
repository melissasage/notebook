(define (a-plus-abs-b a b)
 ((if (> b 0) + - ) a b))

#|
 this procedure adds A to the absolute value of B.
 If B is greater than 0, it adds A and B.
 If B is less than or equal to 0, it subtracts B from A- which turns into addition with negative numbers.
|#