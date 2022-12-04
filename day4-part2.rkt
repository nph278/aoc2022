#lang racket

(define data (map (compose (curry map (compose (curry map string->number) (curryr string-split "-"))) (curryr string-split ",")) (file->lines "./day4-data.txt")))

(define (overlap x) (and (<= (first (first x)) (second (second x))) (>= (second (first x)) (first (second x)))))

(length (filter overlap data))
