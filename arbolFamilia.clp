(defrule MAIN::progenitor
   (padre-de ?padre ?hijo)
   (marido-de ?padre ?madre)
   =>
   (assert (progenitor-de ?madre ?hijo)))

(defrule MAIN::esposa
   (marido-de ?hombre ?mujer)
   =>
   (assert (esposa-de ?mujer ?hombre))
   (printout t ?mujer " es la esposa de " ?hombre crlf))

(defrule MAIN::padre
   (progenitor-de ?padre ?hijo)
   (hombre ?padre)
   =>
   (assert (padre-de ?padre ?hijo))
   (printout t ?padre " es padre de " ?hijo crlf))

(defrule MAIN::madre
   (progenitor-de ?madre ?hijo)
   (mujer ?madre)
   =>
   (assert (madre-de ?madre ?hijo))
   (printout t ?madre " es madre de " ?hijo crlf))

(defrule MAIN::abuelos
   (progenitor-de ?padre ?hijo)
   (progenitor-de ?hijo ?nieto)
   =>
   (assert (abuelos-de ?padre ?nieto)))

(defrule MAIN::abuelo
   (abuelos-de ?padre ?nieto)
   (hombre ?padre)
   =>
   (assert (abuelo-de ?padre ?nieto))
   (printout t ?padre " es el abuelo de " ?nieto crlf))

(defrule MAIN::abuela
   (abuelos-de ?madre ?nieto)
   (mujer ?madre)
   =>
   (assert (abuelo-de ?madre ?nieto))
   (printout t ?madre " es el abuela de " ?nieto crlf))

(defrule MAIN::hermanos-padre
   (padre-de ?padre ?hijo1)
   (padre-de ?padre ?hijo2)
   (test (neq ?hijo1 ?hijo2))
   =>
   (assert (hermanos ?hijo1 ?hijo2)))

(defrule MAIN::hermanos-madre
   (madre-de ?madre ?hijo1)
   (madre-de ?madre ?hijo2)
   (test (neq ?hijo1 ?hijo2))
   =>
   (assert (hermanos ?hijo1 ?hijo2)))

(defrule MAIN::hermano
   (hermanos ?hijo1 ?hijo2)
   (hombre ?hijo1)
   =>
   (assert (hermano-de ?hijo1 ?hijo2))
   (printout t ?hijo1 " es hermano de " ?hijo2 crlf))

(defrule MAIN::hermana
   (hermanos ?hijo1 ?hijo2)
   (mujer ?hijo1)
   =>
   (assert (hermana-de ?hijo1 ?hijo2))
   (printout t ?hijo1 " es hermana de " ?hijo2 crlf))

(defrule MAIN::tios
   (progenitor-de ?padre ?hijo)
   (hermanos ?padre ?hermano)
   =>
   (assert (tios ?hermano ?hijo)))

(defrule MAIN::tio
   (tios ?tio ?sobrino)
   (hombre ?tio)
   =>
   (assert (tio ?tio ?sobrino))
   (printout t ?tio " es tio de " ?sobrino crlf))

(defrule MAIN::tia
   (tios ?tia ?sobrino)
   (mujer ?tia)
   =>
   (assert (tia-de ?tia ?sobrino))
   (printout t ?tia " es tia de " ?sobrino crlf))

(defrule MAIN::sobrino
   (tios ?tios ?sobrino)
   (hombre ?sobrino)
   =>
   (assert (sobrino-de ?sobrino ?tios))
   (printout t ?sobrino " es sobrino de " ?tios crlf))

(defrule MAIN::sobrina
   (tios ?tios ?sobrina)
   (mujer ?sobrina)
   =>
   (assert (sobrina-de ?sobrina ?tios))
   (printout t ?sobrina " es sobrina de " ?tios crlf))

(defrule MAIN::prima
   (tios ?tia ?sobrina)
   (progenitor-de ?tia ?prima)
   (mujer ?prima)
   =>
   (assert (prima-de ?sobrina ?prima))
   (printout t ?prima " es prima de " ?sobrina crlf))

(defrule MAIN::primo
   (tios ?tios ?sobrino)
   (progenitor-de ?tia ?primo)
   (hombre ?primo)
   =>
   (assert (primo-de ?sobrino ?primo))
   (printout t ?primo " es primo de " ?sobrino crlf))


; --- Hechos ----
(deffacts inicio
(hombre Carlos)
(mujer Lorena)
(hombre Andres)
(mujer Mercedes)
(mujer Maria)
(hombre Mario)
(mujer Irene)
(hombre Roberto)
(hombre Alejandro)
(hombre Luis)
(hombre Sebastian)
(mujer Inees)
(progenitor-de Carlos Irene)
(progenitor-de Carlos Alejandro)
(progenitor-de Raymon Isaac)
(progenitor-de Isaac Sebastian)
(progenitor-de Carlos Inees)
(marido-de Carlos Lorena)
(progenitor-de Roberto Luis)
(marido-de Carlos Lorena)
(marido-de Roberto Mercedes)
(tios Isaac Raymon)
)

