#lang racket

(provide split-by)

(define (split-by lst x)
  (foldr (lambda (element next)
           (if (string=? element x)
               (cons empty next)
               (cons (cons element (first next)) (rest next))))
         (list empty) lst))
