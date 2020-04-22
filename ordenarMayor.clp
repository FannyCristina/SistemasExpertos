(deffacts MAIN::maximo
   (vector 1)
   (vector 2)
   (vector 4)
   (vector 6)
   (vector 8)
   (vector 11)
   (vector 114))

(defrule MAIN::Pos
   (vector ?x)
   =>
   (assert (vector-aux ?x)))

(defrule MAIN::ordena
   ?f <- (max vector-aux ?b ?m1 ?m2&:(< ?m2 ?m1) ?e)
   =>
   (retract ?f)
   (assert (vector-aux ?b ?m2 ?m1 ?e)))

(defrule MAIN::Imprime
   (not (vector-aux ?x ?m1 ?m2&:(< ?m2 ?m1) ?e))
   (vector ?y)
   =>
   (printout t "El orden es." "-- " ?y crlf))

