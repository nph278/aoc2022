#lang racket

(provide index-of split-into-chunks split-by)

(define (index-of lst ele)
  (let loop ((lst lst)
             (idx 0))
    (cond ((empty? lst) #f)
          ((equal? (first lst) ele) idx)
          (else (loop (rest lst) (add1 idx))))))

(define (split-into-chunks lst n)
  (if (not (empty? lst))
      (cons (take lst n) (split-into-chunks (drop lst n) n))
      '() ))

(define (split-by lst x)
  (foldr (lambda (element next)
           (if (string=? element x)
               (cons empty next)
               (cons (cons element (first next)) (rest next))))
         (list empty) lst))
