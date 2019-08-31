(define (inc a) (+ a 1))
(define (dec a) (- a 1))

(define (recursive-plus a b)
    (if (= a 0)
        b
        (inc (recursive-plus (dec a) b))))

(define (iterative-plus a b)
    (if (= a 0)
        b
        (iterative-plus (dec a) (inc b))))
