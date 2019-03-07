(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (= guess (improve guess x)))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

#|
Arithmetic operations are performed with limited precision. To show an example, let's use the basic newton-sqrt program to find the square root of 100 and 10000000000 (10^10)- which should be 10 and 100000, respectively.

(sqrt 100) ;Value: 10.000000000139897
(sqrt 10000000000) ;Value: 100000.

We have a small error term on 100, and none at all on 10^10- because 0.001 of such a huge number is so small that the computer can't represent it, and so it produces a rounding error.

This change to good-enough:

    (define (good-enough? guess x)
        (= guess (improve guess x)))

makes it so that it will continue to go until the computer runs out of precision, therefore giving us the most exact possible solution.

|#