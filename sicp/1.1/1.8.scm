(define (improve guess cube)
    (/ (+ (/ cube (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
    (< (abs (- 1 (/ guess (improve guess x)))) 0.000000000001))

(define (cbrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (cbrt-iter (improve guess x)
            x)))

(define (cbrt x)
    (cbrt-iter 1.0 x))

#|
can't use the equals version of good-enough here because we're no longer averaging two things; it makes for an infinite loop when the answer isn't an integer.

there probably IS a way to take advantage of limited memory to get a self-terminating program here, but i don't know it, so instead we have arbitrary precision.
|#