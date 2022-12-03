#lang racket

(require "./common.rkt")

(define data (file->lines "./day3-data.txt"))

(define (priority ch) (+ (index-of (string->list "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") ch) 1))

(apply + (map (compose priority car (curry apply set-intersect) (curry map string->list)) (split-into-chunks data 3)))
