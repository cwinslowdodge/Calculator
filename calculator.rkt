;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname calculator) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define promptuser1 0)
(define action 0)
(define promptuser2 0)

(display "Enter a number: ")
(set! promptuser1 (read))
(newline)

(define (calc x) (

(display "Enter an Operator (+ - * / %): ")
(set! action (read))
(newline)

(display "Enter another number: ")
(set! promptuser2 (read))
(newline)

(if
 (eqv? action '+)
 ((display (+ x promptuser2))(newline)(calc (+ x promptuser2)))
 (newline) 
 )

(if 
 (eqv? action '-)
 ((display (- x promptuser2))(newline)(calc (- x promptuser2)))
 (newline))

(if 
 (eqv? action '/)
 ((display (/ x promptuser2))(newline)(calc (/ x promptuser2)))
 (newline))

(if 
 (eqv? action '*)
 ((display (* x promptuser2))(newline)(calc (* x promptuser2)))
 (newline))

(if 
 (eqv? action '%)
 ((display (modulo x promptuser2))(newline)(calc (modulo x promptuser2)))
 (newline))
))

(calc promptuser1)



#|
(define (promptuser)((display "Enter a Number: ")(read))

(promptuser)




(define myList '())

(define (calculator myList)
  ((display "Enter a number: ")
   (let (input) ((read);cannot get this to work
     (display input)(newLine)
     
     (cond
       ((eqv? input 'END)
        (break))
       ((eqv? input '+)
        ;read in user input and store in mylist
        (+ (car myList)(cdr myList)) ; clear myList and store this to myList
        (calculator (myList))
        )
       ((eqv? input '-)
        ;read in user input and store in mylist
        (- (car myList)(cdr myList)) ; clear myList and store this to myList
        (calculator (myList))
        )
       ((eqv? input '*)
        ;read in user input and store in mylist
        (* (car myList)(cdr myList)) ; clear myList and store this to myList
        (calculator (myList))
        )
       ((eqv? input '/)
        ;read in user input and store in mylist
        (/ (car myList)(cdr myList)) ; clear myList and store this to myList
        (calculator (myList))
        )
       ((eqv? input '%)
        ;read in user input and store in mylist
        (modulo (car myList)(cdr myList)) ; clear myList and store this to myList
        (calculator (myList))
        )
       ((integer? input)
        (cons (input)(myList))
        (calculator (myList))
        )


       )
     )
     )
   )
  )
     
(define (go)(calculator(list 0)))
            
|#


