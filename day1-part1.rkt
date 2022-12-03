#lang racket

(require "./common.rkt")

(define data (map (lambda (l) (map string->number l)) (split-by (file->lines "./day1-data.txt") "")))

(apply max (map (lambda (l) (apply + l)) data))
