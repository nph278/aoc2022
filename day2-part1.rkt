#lang racket

(define data (map (lambda (s) (map (lambda (x) (- (string->number x) 1)) (string-split s))) (file->lines "./day2-data.txt")))

(define (score a) (+ 1 (second a) (case (modulo (- (second a) (first a)) 3) [(0) 3] [(1) 6] [(2) 0])))

(apply + (map score data))
