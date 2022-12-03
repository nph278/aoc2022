#lang racket

(require "./common.rkt")

(define data (file->lines "./day3-data.txt"))

(define (compartments s) (list
                          (substring s 0 (/ (string-length s) 2))
                          (substring s (/ (string-length s) 2) (string-length s))))

(define (priority ch) (+ (index-of (string->list "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") ch) 1))

(apply + (map (compose priority car (curry apply set-intersect) (curry map string->list) compartments) data))
