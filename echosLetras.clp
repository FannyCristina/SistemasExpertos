(deffacts MAIN::echosLetras
   (H)
   (K))

(defrule MAIN::Letras-B
   (B)
   =>
   (assert (D))
   (printout t "*Activa -- D --*" crlf))

(defrule MAIN::Letras-H
   (H)
   =>
   (assert (A))
   (printout t "*Activa -- A --*" crlf))

(defrule MAIN::Letras-A
   (A)
   =>
   (assert (E))
   (printout t "*Activa -- E --*" crlf))

(defrule MAIN::Letras-EG
   (E)
   (G)
   =>
   (assert (C))
   (printout t "*Activa -- C --*" crlf))

(defrule MAIN::Letras-EK
   (E)
   (K)
   =>
   (assert (B))
   (printout t "*Activa -- B --*" crlf))

(defrule MAIN::Letras-DEK
   (D)
   (E)
   (K)
   =>
   (assert (C))
   (printout t "*Activa -- C --*" crlf))

(defrule MAIN::Letras-GKF
   (G)
   (K)
   (F)
   =>
   (assert (A))
   (printout t "*Activa -- A --*" crlf))

