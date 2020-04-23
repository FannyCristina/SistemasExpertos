(deftemplate MAIN::vect
   (slot index (type INTEGER))
   (slot value (type INTEGER)))

(deffacts MAIN::vector
   (vect (index 1) (value 25))
   (vect (index 2) (value 3))
   (vect (index 3) (value 33))
   (vect (index 4) (value 22))
   (vect (index 5) (value 8))
   (vect (index 6) (value 5))
   (vect (index 7) (value 5))
   (vect (index 8) (value 60))
   (vect (index 9) (value 4)))

(defrule MAIN::sort-bubble
   ?f1 <- (vect (index ?p1) (value ?v1))
   ?f2 <- (vect (index ?p2&:(= ?p2 (+ ?p1 1))) (value ?v2&:(< ?v2 ?v1)))
   =>
   (modify ?f1 (value ?v2))
   (modify ?f2 (value ?v1)))

(defrule MAIN::print-res
   (declare (salience -10))
   ?f1 <- (vect (index ?p1) (value ?v))
   (forall
        (vect (index ?p2))
        (test (<= ?p1 ?p2)))
   =>
   (printout t ?v crlf)
   (retract ?f1))

