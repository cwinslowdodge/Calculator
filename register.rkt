;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname register) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;(let ((val)(read))

;(checkout myList)
;  (cond
;    ((listempty?)(print stuff))
;    (add val to list  call ourselves again)


;    (newline)

 ;  'total

  ; subtotal: $1.00
   ;taxes: $.06
   ;total: $1.06


;;;define binding tax rate
(define taxRate .065)

;;;Create a binding for make change function
;;;should take 2 params 'amount''tendered'
(define (makechange amount tendered)
  (- tendered amount)
)

;(define (add myList)
;  (cond
;    (((null?) myList) 0 )
;    (+ car(myList)(add (cdr myList)))))
  


;(define (average myList)
;  (/ (add myList)(length myList))
;)  

(define (getitem)
  ((display "Enter an item amount: ")
  (read))
)

(define (checkout myList)
  ((display "Enter an item value: ")
  (let (val) ((read)
    (display val)(newline)
     (cond
      ((eqv? val 'total) 
           (let ((subtotal (add myList)))
                         (display "Subtotal: ")
                         (display subtotal)(newline)
                         (display "Tax: ")
                         (display (* taxRate subtotal))(newline)
                         (display "Total: ")
                         (display (+ subtotal (* taxRate subtotal)))(newline)
                         ))
      (else(checkout (cons val myList)))
      )
    )

)))
   

(define (go)(checkout(list 0)))

