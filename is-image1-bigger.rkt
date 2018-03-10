;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname is-image1-bigger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; If the first image is bigger than the second then produce true else false


(check-expect (isBigger (rectangle 50 30 "solid" "green")
                        (rectangle 40 30 "solid" "green")) true )

(check-expect (isBigger (rectangle 50 40 "solid" "green")
                        (rectangle 70 30 "solid" "green")) false )

(check-expect (isBigger (rectangle 50 40 "solid" "green")
                        (rectangle 50 40 "solid" "green")) false )

;(define (isBigger img1 img2) false) ;stub

;(define (isBigger img1 img2)
;(...img1 img2))  ;example

(define (isBigger img1 img2)
  (> (+(image-width img1) (image-height img1)) (+ (image-width img2) (image-height img2))) 
)