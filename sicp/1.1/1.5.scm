(define (p) (p))
(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

#|
if applicative:
    this never terminates, because (p) is infinitely recursive.
    (test 0 (p))
    (test 0 (p))
    ...∞
if normal:
    evaluates to 0, because it simply never reaches the infinite recursion!
    (test 0 (p))
    (if (= 0 0) 0 (p))
    (if #t 0 p)
    0

my Scheme interpreter definitely uses applicative, bc it gets stuck and dies when I try to run this program.
|#