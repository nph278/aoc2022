#lang racket

(define data (map (compose (curry map (compose (curry map string->number) (curryr string-split "-"))) (curryr string-split ",")) (file->lines "./day4-data.txt")))

(define (contains x) (or
                      (and (<= (first (first x)) (first (second x))) (>= (second (first x)) (second (second x))))
                      (and (>= (first (first x)) (first (second x))) (<= (second (first x)) (second (second x))))))

(length (filter contains data))
