# Algoritmo de Booth en Verilog
Camino de datos del Algoritmo de Booth:
<p align="center">
  <img src="https://github.com/feichay10/Booth-Algorithm-in-Verilog/blob/9eb77ad59fc31fbf3e324f2241417f4a0323431d/assets/Camino%20de%20datos%20del%20Alg%20Booth.png" />
</p>

## Objetivo
El objetivo de este algoritmo es la multiplicación de dos números con signo (2 bits en Complemento a 2). Para ello, el sistema se compone de una Unidad de Control, 
implementada como un autómata de estados finito (máquina tipo Mealy) y un camino de datos que representa las conexiones necesarias para hacer el algoritmo de multiplicación (Algoritmo de Booth).

## Esquema del funcionamiento de la Maquina de Estados
<p align="center">
  <img src="https://github.com/feichay10/Booth-Algorithm-in-Verilog/blob/d177db168d7c8db160f49bb09e13f028b3057ef7/assets/Diagrama%20de%20Estados.jpg" />
</p>

## Compilación
Para compilar el programa, es recomendable usar el Script de Bash `compilation.sh`. Este script se encarga de hacer la compilación de forma automática y también genera el fichero `ActPrevia` para mostrar los resultados del test. Además, genera otro fichero llamado `multiplicador_tb.vcd` para posterior análisis en el programa GTKWAVE. Desde el Script de Bash tras la compilacion y la ejecución del programa te pregunta si se quiere ejecutar el programa GTKWAVE.

<p align="center">
  <img src="https://github.com/feichay10/Booth-Algorithm-in-Verilog/blob/5e2ee1501580a66070a032f487a698850f38aa77/assets/Compilacion.png" />
</p>

El comando utilizado para compilar es:
```bash

iverilog -o ActPrevia multiplicador_tb.v multiplicador.v uc.v caminosdatos.v componentes.v

```
Si queremos directamente compilar el programa, mostrar los resultados, generar los ficheros y acceder al GTKWAVE, podemos utilizar el programa `compilation.sh`. Solo hay que ejecutar el siguiente comando:
```bash

./compilation.sh

```
