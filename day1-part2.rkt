#lang racket

(require "./split-by.rkt")

(define data (map (lambda (l) (map string->number l)) (split-by (file->lines "./day1-data.txt") "")))

(define totals (sort (map (lambda (l) (apply + l)) data) >))

(apply + (take totals 3))
