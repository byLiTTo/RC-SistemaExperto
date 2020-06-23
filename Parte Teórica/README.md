<img src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/images/LogoETSI.png" width="150"> <img src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Pr%C3%A1ctica/imagenes/HuecoBlanco.png" width="55"> <img src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/images/LogoDavid.png" width="200"> <img src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Pr%C3%A1ctica/imagenes/HuecoBlanco.png" width="10"> <img src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Pr%C3%A1ctica/imagenes/LogoLiTTo.png" width="200"> <img src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Pr%C3%A1ctica/imagenes/HuecoBlanco.png" width="55"> <img src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Pr%C3%A1ctica/imagenes/LogoUHU.png" width="200">

#   Trabajo Teórico de Representación del Conocimiento
:school: Universidad de Huelva  
:books: Curso 2019-2020
    
##  Introducción
En este documento, se pretende especificar y detallar diferentes técnicas más usadas en la Representación del Conocimiento aplicadas a la Inteligencia Artificial. Estas técnicas son esenciales para poder transformar la información del mundo que nos rodea, convirtiéndola en una estructura específica para que esta, pueda resolver problemas. Podemos encontrar numerosas técnicas, pero en el presente documento detallaremos cinco.

##  ¿Qué es exactamente la Representación del Conocimiento?
La Representación del Conocimiento, en el campo de la IA, es la responsable de describir la representación del conocimiento. Básicamente, es un estudio de cómo las creencias, intenciones y juicios de un agente inteligente pueden expresarse adecuadamente para un razonamiento automatizado. Uno de los propósitos primarios de la representación del conocimiento incluye el modelado del comportamiento inteligente de un agente. Ese comportamiento inteligente, se modela por los diferentes tipos de conocimientos que se representan en IA, los cuales son:

- Objetos
- Eventos
- Actuación
- Hechos
- Meta - Conocimiento
- Base de conocimientos

Además de esto, podemos encontrar tres tipos de clasificación del Conocimiento:

- Conocimiento Declarativo  
Este conocimiento se basa en objetos o situaciones, poseen una mayor capacidad expresiva, que a su vez produce una menor capacidad computacional. Es conocimiento pasivo expresado mediante sentencias acerca de los hechos del mundo que nos rodea.

- Conocimiento procedimental  
Se basa en el saber de cómo realizar una acción por reglas gramaticales, implementadas por sistemas o lenguajes procedimentales y sistemas basados en reglas.

- Conocimiento Heurístico  
Conocimiento que es usado por los Seres Humanos para resolver problemas complejos. Se usa este conocimiento para simplificar la solución de un problema.

Teniendo todo esto en cuenta, se procede a especificar y explicar las técnicas más utilizadas de este campo.

## Técnicas de la Representación del Conocimiento

## 1. Representación Lógica
La representación lógica del conocimiento viene siendo un lenguaje con representación inequívoca guiada por condiciones y reglas que previamente hemos establecido. La representación lógica significa sacar una conclusión basada en varias condiciones.  

Unas implementaciones de esta lógica entre el Lenguaje Natural y el Lenguaje de Representación Lógica podrían ser unas tales como las siguientes:

**Implementación sencilla:**  
***Lenguaje Natural: "David es humano"***

***Lenguaje de Representación Lógica:***
```
?- esHumano(David).
True

?- esHumano(X).
X = David
```


**Implementación más avanzada:**  
***Lenguaje Natural: "Las guitarras tienen cuerdas"***

***Lenguaje de Representación Lógica:***
```
Lógica: ∀X.(guitarra(X) → ∃Y.(tiene(X,Y) ∧ cuerdas(Y)))  
  Para toda X:  
    Si (X es una guitarra)
     Entonces existe un Y tal que
      (X tiene Y) y (Y son cuerdas)
```
Como cualquier lenguaje, este se compone de una **Sintaxis** y una **Semántica**, la cual es necesaria para traducir cualquier dato a la lógica.

**Sintaxis**

- Conjunto de reglas que determinan como construid sentencias lógicas.
- Determina qué símbolo podemos usar en la representación final de la lógica.
- Formas de representar esos símbolos.

**Semántica**

- Conjunto de reglas que determinan el cómo interpreta el lenguaje las sentencias lógicas.
- Proporciona un significado a cada sentencia para que tengan sentido.

| Ventajas | Desventajas |
| ------------- | ------------- |
| Ayuda a realizar un razonamiento lógico.  | Estas representaciones, tienen algunas restricciones y es complicado trabajar con ellas.  |
| Es la base de los lenguajes de programación.  | Todo esto, puedo no ser muy natural y la deducción podría no ser muy eficiente.  |

## 2. Representación de Redes Semánticas

Las Redes Semánticas son una forma de representar el conocimiento de un agente, en forma de grafo. Estos se componen de nodos los cuales tienen un objeto, y unas conexiones que se interconectan para representar una característica de ese objeto. Si no se presenta ningún ciclo, sería un árbol.

<p align="center">
  <img width="460" height="300" src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/images/Image_1.png">
</p>

Esta representación consta de tres tipos de relaciones:
- Relación IS-A (es un/a...): Se basa en la herencia, en la que el nodo origen, por cualquiera que sea, representa una instancia concreta del nodo destino.
- Relación KIND-OF (tipo de...): El nodo destino es un tipo del nodo origen. El nodo origen es una categoría y el nodo destino está dentro de esa categoría.
- Relación HAS (tiene): representa una propiedad que tiene un nodo con otro.

<p align="center">
  <img width="460" height="300" src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/images/Image_2.png">
</p>

| Ventajas | Desventajas |
| ------------- | ------------- |
| Las redes semánticas son una representación natural del conocimiento.  | Necesitan más tiempo computacional en tiempo de ejecución.  |
| Transmite significado de manera transparente.  | Al mismo tiempo, son inadecuadas ya que no tienen un cuantificador equivalente.  |
| Estas redes son simples y fáciles de entender.  | Las redes no son inteligentes y dependen del creador de la propia Red Semántica.  |

## 3. Representación de Marcos (Frames)
Un marco, es una estructura de datos que contiene una colección de atributos y valores que describe una entidad del mundo real.
Estos contienen una colección de atributos y valores para describir una entidad del mundo real.

Los marcos ofrecen una representación concisa y estructurada del conocimiento de forma natural. Permiten usar el poder de los objetos incluyendo a otros procesos y mecanismos.

<p align="center">
  <img width="460" height="300" src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/images/Image_3.png">
</p>

***Un conjunto de muchos frames, componen la representación total del conocimiento de ese agente inteligente, permitiendo representar el mundo del mismo.***

| Ventajas | Desventajas |
| ------------- | ------------- |
| Facilita la programación agrupando datos relacionados.  | En un sistema de deducción basado en frames, el mecanismo puede no ser procesado fácilmente.  |
| Fácil de entender y leer. Realmente sencillo añadir ranuras para nuevos atributos y relaciones.  | El mecanismo de deducción puede no ajustarse correctamente a nuevas situaciones.  |
| Fácil de añadir datos por defecto y encontrar atributos vacíos.  | Es una aproximación demasiado general.  |

## 4. Reglas de Producción
El agente comprueba la condición, y si la condición es válida, la acción de esa regla realiza los pasos para la resolución del problema. El proceso que realiza este agente se llama, ciclo de reconocimiento-toma de decisión.

Aquí un ejemplo:
```
Si el consumo energético es alto y no hace calor
entonces
    Apaga el aire acondicionado
sino
    Deja encendido el aire acondicionado
```
El sistema de reglas consta de tres partes principales:

- Conjunto de reglas.
- Memoria.
- Ciclo de reconocimiento-toma de decisión.

| Ventajas | Desventajas |
| ------------- | ------------- |
| Las reglas son expresadas en lenguaje natural.  | No muestra ninguna capacidad de aprendizaje y no almacena el resultado para futuras aplicaciones.  |
| Las reglas son altamente modificables, pueden ser fácilmente modificadas o eliminadas.  | Durante la ejecución del programa, pueden ejecutarse demasiadas reglas en un momento determinad. Esto resulta muy ineficiente.  |

## 5. Redes Bayesianas
Las redes bayesianas son una representación gráfica de dependencias para razonamiento probabilístico, en la cual los nodos representan variables aleatorias y los arcos representan relaciones de dependencia directa entre las variables.

Aquí un ejemplo de una implementación de Redes Bayesianas:  

```
En este problema, los nodos representan enfermedades, síntomas y factores que causan algunas enfermedades.
La variable a la que apunta un arco es dependiente de la que está en el origen de éste, por ejemplo, fiebre  
depende de tifoidea y gripe en la red. La topología o estructura de la red nos da información sobre las
dependencias probabilísticas entre las variables. La red también representa las
independencias condicionales de una variable (o conjunto de variables) dada(s)
otra(s) variable(s).
```

<p align="center">
  <img width="460" height="300" src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/images/image_4.png">
</p>

Una vez tenemos el grafo principal, cada nodo tiene asociado una función de probabilidad que toma como entrada un conjunto particular de valores padres del nodo y devuelve la probabilidad de la variable representada en el nodo correspondiente. Aquí mostramos la aplicación de las funciones de probabilidad:

<p align="center">
  <img width="460" height="300" src="https://github.com/byLiTTo/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/images/image_5.png">
</p>

Calculando la probabilidad de cada uno de ellos, podemos obtener una solución probabilística del problema propuesto.

| Ventajas | Desventajas |
| ------------- | ------------- |
| Se puede modelar sistemas muy complejos.  | La verdadera confiabilidad de la información.  |
| Posibilidad de combinar datos objetivos y subjetivos.  | Generación de arcos innecesarios o inservibles.  |
| Pueden hacerse modificaciones de forma rápida a sus datos.  | Datos introducidos de manera manual.  |


## Bibliografía

[1. What is Knowledge Representation in AI? Techniques You Need To Know](https://www.edureka.co/blog/knowledge-representation-in-ai/)  
[2. Knowledge Representation in Artificial intelligence](https://www.slideshare.net/YasirAhmedKhan/5-knowledgerepresentation-10-sldes)  
[3. Techniques of knowledge representation](https://www.javatpoint.com/ai-techniques-of-knowledge-representation)  
[4. Representación del Conocimiento en la I.A](https://es.slideshare.net/xTabuux/representacin-del-conocimiento-en-la-ia)  
[5. Representación del Conocimiento](https://es.wikipedia.org/wiki/Representaci%C3%B3n_del_conocimiento)  
[6. Classifying Knowledge Representation In Artificial Intelligence](https://www.fingent.com/blog/classifying-knowledge-representation-in-artificial-intelligence/)  
[7. Marcos (Frames)](https://freedoomforlife.wordpress.com/marcos-frames/)  
[8. Frame (artificial intelligence)](https://en.wikipedia.org/wiki/Frame_(artificial_intelligence))  
[9. Redes Bayesianas (Luis Enrique Sucar)](https://ccc.inaoep.mx/~esucar/Clases-mgp/caprb.pdf)  
[10. Red Bayesiana (Wikipedia)](https://es.wikipedia.org/wiki/Red_bayesiana)
