(define new-if predicate then-clause else-clause
    (cond (predicate then-clause)
    (else else-clause)))

#|
it uses applicative evaluation instead of normal-order evaluation.
what this means is that the ELSE in the recursive function will constantly be evaluated, until memory leaks crash the computer or it hits an interrupt.

IF needs to be a special form because it must use normal order- it needs to only evaluate one of its branches, not both.

normal = do it piecemeal
applicative = break it down and then apply
|#