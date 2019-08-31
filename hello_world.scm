(define (new-if predicate then-clause else-clause)
    (cond   (predicate then-clause) 
            (else else-clause)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (improve guess x) 
    (average guess (/ x guess)))

(define (goodEnough? guess x) 
    (< 
        (abs (- (square guess) x))
        0.000001))

(define (sqrt-iter guess x) 
    (new-if (goodEnough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
        
(define (sqrt x) 
    (sqrt-iter 1.0 x))

(define (simple-sqrt x)
    (define (average x y) (/ (+ x y) 2))

    (define (square x) (* x x))

    (define (improve guess x)
        (average guess (/ x guess)))

    (define (goodEnough? guess x)
        (<
            (abs (- (square guess) x))
            0.000001))

    (define (sqrt-iter guess x)
        (if (goodEnough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))
            
    (sqrt-iter 1.0 x))
