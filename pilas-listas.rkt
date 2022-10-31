#lang eopl

;;;Carolain Jimenez Bedoya - 2071368 
;;;Hernando Lopez Rincon - 2022318
;;;Gabriel Franco Betancourt - 2024200
;;;Juan Steban Diaz Ramirez - 2024147
;;;Natalia Lopez Osorio - 2025618

;;;; Stack/Pila - Representación como listas ;;;;;;;;;;;;


;;Gramatica para la pila
;;<Stack> := (empty-stack)
;;        := (push <scheme-value> <Stack>)

;;empty-stack
;;Proposito:
;;Procedimiento que representa una pila vacia como una lista vacia.
;;

(define empty-stack
  (lambda ()
    '()
  )
)

;;empty-stack?
;;Proposito:
;;Predicado para saber si una pila está vacia.
;;Recibe un dato y devuelve verdadero si es un empty-stack o falso si no.
;;

(define empty-stack?
  (lambda (stack)
    (eqv? stack empty)
  )
)

;;push
;;Proposito:
;;Inserta elementos a la parte superior de la pila 
;;Recibe un dato y una pila, devuelve la pila con el dato ingresado al principio.
;;

(define push
  (lambda (val stack)
    (list val stack)
  )
)

;;pruebas
;;(push 34 (push 8 (push 'a (push 1(push 2(push 3 (empty-stack)))))))
;;(push 'a (empty-stack))

;;top
;;Proposito:
;;Devuelve el elemento en la parte superior de la pila o el ultimo elemento ingresado a la pila
;;Recibe una pila, devuelve el dato alojado al principio.
;;

(define top
  (lambda (stack)
    (if (eqv? stack '())
        (eopl:error 'top "No binding for ~s" stack)
        (car stack)
    )
   )
)

;;pruebas
;;(top (push 2(push 3 (empty-stack))))
;;(top (push 34 (push 80 (push 66 (push 0(push 1(push 20 (empty-stack))))))))
;;(top (push a (push 80 (push 0(push 1(push 20 (empty-stack)))))))


;;pop
;;Proposito:
;;Retira el primer elemento de la pila.
;;Recibe una pila, devuelve la pila sin el elemento de la parte superior de la pila.
;;

(define pop
  (lambda (stack)
    (if (eqv? stack '())
        (eopl:error 'top "No binding for ~s" stack)
        (cadr stack)
    )
   )
)

;;pruebas
;;(pop (push 34 (push 8 (push 10 (push 1(push 2(push 3 (empty-stack))))))))
;;(pop (push 10 (push 1(push 2(push 3 (empty-stack))))))
