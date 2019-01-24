(define (square x) (* x x))

(define (squarelargest2 x y z)
  (+
    (cond (> x y z) x)
    (cond (> y x z) y)
    (cond (> z y x)
  )
)

(squarelargest2 1 2 3)
