(define (my-filter pred s) 
  (cond ((null? s) '())
  ((pred (car s)) (cons (car s) (my-filter pred (cdr s))))
  (else (my-filter pred( cdr s))))
  )

(define (interleave lst1 lst2) 
  (if (or (null? lst1) (null? lst2))
  (append lst1 lst2)
  (cons (car lst1)
    (cons (car lst2)
      (interleave (cdr lst1) (cdr lst2)))))
  )

(define (accumulate joiner start n term)
  (if (= n 0) start 
   (joiner (term n) (accumulate joiner start (- n 1) term)))
  )

(define (no-repeats lst) 
  (if (null? lst) lst
   (cons (car lst) 
    (no-repeats (filter (lambda (x) (not (= x (car lst)))) (cdr lst)))))
)