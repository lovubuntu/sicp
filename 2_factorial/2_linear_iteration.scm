; Recursive Process vs Recursive procedure
; Recursive procedure - it is because the procedure is calling itself
; Recursive Process - it is because of the way the process evolves (non tail-recursive process)

(define (factorial max-count)
    (define (factorial-iter value current-index)
    (if (> current-index max-count)
        value
        (factorial-iter (* value current-index) (+ current-index 1))))
    (factorial-iter 1 1))
