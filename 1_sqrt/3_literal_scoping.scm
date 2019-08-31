(define (sqrt x)
    (define (average x y) (/ (+ x y) 2))

    (define (square x) (* x x))

    (define (improve guess)
        (average guess (/ x guess)))

    (define (goodEnough? guess)
        (<
            (abs (- (square guess) x))
            0.000001))

    (define (sqrt-iter guess)
        (if (goodEnough? guess)
            guess
            (sqrt-iter (improve guess))))
            
    (sqrt-iter 1.0))
