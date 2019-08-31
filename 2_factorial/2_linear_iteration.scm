(define (factorial max-count)
    (define (factorial-iter value current-index)
    (if (> current-index max-count)
        value
        (factorial-iter (* value current-index) (+ current-index 1))))
    (factorial-iter 1 1))