<H1 align="center"> Deberes y Algoritmos -SE </H1>
 <br>
 
## Ejercicio  Numero Primo
**1** Implementar metodo *primo* que esta dentro del archivo [**"code" copiar el primer algoritmo**](https://github.com/jcuyaguari/SistemasExpertos/blob/master/Code)  <br>     
**2** Ejecutar: *( printout t "Respuesta " (numPrimo 4)crlf)* donde 4 es el parametro a validar si es primo o no  

## Ejemplo de Fibonacci 
**1** Implemetar *deffunction fi* y *deffunction fibo* que esta dentro de (https://github.com/jcuyaguari/SistemasExpertos/blob/master/Code) <br>
**2** Ejecutar: *(printout t "Fibonacci "(fibo 4)crlf)* definiendo como parametro el numero  <br>
**3** Ejecutar: *(printout t "" (fibo 5) crlf)* definiendo como parametro el numero     <br>

[**Pasos-Ejecucion-->**](https://github.com/jcuyaguari/SistemasExpertos/blob/master/clips.pdf)

## Ordenar de Mayor a Menor
### Primer Metodo
**1** Clonar el [**ordenarMayor.clp**](https://github.com/jcuyaguari/SistemasExpertos/blob/master/ordenarMayor.clp) <br>
**2** Ejecutar en clips: <br>        
      - (load "ordenarMayor.clp") <br>     
      - (reset) <br>
      - (facts) <br>
      - (run) <br>
      - **Sin definir los valores en el metodo tendriamos que ejecutar con esto** (assert (vector 5 3 7 8 4 6 9))     
        
### Segundo Metodo
**1** Clonar [**OrdenarVector.clp**](https://github.com/jcuyaguari/SistemasExpertos/blob/master/OrdenarVector.clp) <br>
**2** Ejecutar en clips:<br>
      - (load "OrdenarVector.clp")<br>
      - (reset)<br>
      - (run)<br>
      - **Para agregar numeros o ordenar otros modificar archivo en la parte **deffacts vect , Index debe incrementar**
      
## Echos Activa Letras
### Ejecucion
**1** Clonar [**echosLetras.clp**](https://github.com/jcuyaguari/SistemasExpertos/blob/master/echosLetras.clp) <br>
**2** Ejecutar en clips:<br>
      - (load "echosLetras.clp")<br>
      - (reset)<br>
      - (rules)<br>
      - (run)<br>
