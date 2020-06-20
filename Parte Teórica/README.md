#   Trabajo Teórico de Representación del Conocimiento
:school: Universidad de Huelva  
:books: Curso 2019-2020
    
##  Introducción
En este documento, se pretende especificar y detallar diferentes técnicas más usadas en la Representación del Conocimiento aplicadas a la Inteligencia Artificial. Estas técnicas son esenciales para poder tranformar la información del mundo que nos rodea, convirtiendola en una estructura específica para que esta, pueda resolver problemas. Podemos encontrar numerosas técnicas, pero en el presente documento detallaremos cuatro.

##  ¿Qué es exactamente la Representación del Conocimiento?
La Representación del Conocimiento, en el campo de la IA, es la responsable de describir la representación del conocimiento. Básicamente, es un estudio de cómo las creencias, intenciones y juicios de un agente inteligente pueden expresarse adecuadamente para un razonamiento automatizado. Uno de los propósitos primarios de la representación del conocimiento incluye el modelado del comportamiento inteligente de un agente. Ese comportamiento inteligente, se modela por los diferentes tipos de conocimientos que se representan en IA, los cuales son:

- Objetos
- Eventos
- Actuación
- Hechos
- Meta - Conocimiento
- Base de conocimientos

Teniendo todo esto en cuenta, se procede a especificar y explicar las técnicas más utilizadas de este campo.

## Técnicias de la Representación del Conocimiento

## 1. Representación Lógica
La representación lógica del conocimiento vienen siendo un lenguaje con representación inequívoca guiada por condiciones y reglas que previamente hemos establecido. La representación lógica significa sacar una conclusión basada en varias condiciones.  

Una implementación de esta lógica entre el Lenguaje Natural y el Lenguaje de Representación Lógica podría ser una como la siguiente:

***Lenguaje Natural: "Las guitarras tienen cuerdas"***

***Lenguaje de Representación Lógica:***
```
Lógica: ∀X.(guitarra(X) → ∃Y.(tiene(X,Y) ∧ cuerdas(Y)))  
  Para toda X:  
    Si (X es una guitarra)
     Entonces existe un Y tal que
      (X tiene Y) y (Y son cuerdas)
```
Como cualquier lenguaje, este se compone de una **Sintaxis** y una **Semántica**, la cual es necesaria para traducir cualquier datos a la lógica.

**Sintaxis**

- Conjunto de reglas que determinan como construid sentencias lógicas.
- Determina qué simbolo podemos usar en la representación final de la lógica.
- Formas de representar esos símbolos.

**Semántica**

- Conjunto de reglas que determinan el como interpreta el lenguaje las sentencias lógicas.
- Proporciona un significado a cada sentencia para que tengan sentido.

**Ventajas**

- Ayuda a realizar un razonamiento lógico.
- Es la base de los lenguajes de programación.

**Desventajas**

- Estas representaciones, tienen algunas restricciones y es complucado trabajar con ellas.
- Todo esto, puedo no ser muy natural y la deducción podría no ser muy eficiente.

## 2. Representación de Redes Semánticas

Las Redes Semánticas son una forma de representar el conocimiento de un agente, en forma de grafo. Estos se componen de nodos los cuales tienen un objeto, y unas conexiones que se interconectan para representar una característica de ese objeto. Si no se presenta ningún ciclo, sería un árbol.

<p align="center">
  <img width="460" height="300" src="https://github.com/davidcamperom/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/imagenes/Image_1.png">
</p>

Esta representación consta de tres tipos de relaciones:
- Relación IS-A (es un/a...): Se basa en la herencia, en la que el nodo origen, por cualquiera que sea, representa una instancia concreta del nodo destino.
- Relación KIND-OF (tipo de...): El nodo destino es un tipo del nodo origen. El nodo origen es una categoría y el nodo destino está dentro de esa categoría.
- Relación HAS (tiene): representa una propiedad que tiene un nodo con otro.

<p align="center">
  <img width="460" height="300" src="https://github.com/davidcamperom/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/imagenes/Image_2.png">
</p>

**Ventajas**

- Las redes semánticas son una representación natural del conocimiento.
- Transmite significado de manera transparente.
- Estas redes son simples y fáciles de entender.

**Desventajas**

- Necesitan más tiempo computacional en tiempo de ejecución.
- Al mismo tiempo, son inadecuadas ya que no tienen un cuantificador equivalente.
- Las redes no son inteligentes y dependen del creador de la propia Red Semántica.


## 3. Representación de Marcos (Frames)
Un marco, es una estructura de datos que contiene una colección de atributos y valores que describe una entidad del mundo real.
Estos contienen una colección de atributos y valores para describir una entidad del mundo real.

Los marcos ofrecen una representación concisa y estrucurada del conocimiento de forma natural. Permiten usar el poder de los objetos incluyendo a otros procesos y mecanismos.

<p align="center">
  <img width="460" height="300" src="https://github.com/davidcamperom/SistemaExperto/blob/master/Parte%20Te%C3%B3rica/imagenes/Image_3.png">
</p>

***Un conjunto de muchos frames, componen la representación total del conocimiento de ese agente inteligente, permitiendo representar el mundo del mismo.***

**Ventajas**

- Facilita la programación agrupando datos relacionados.
- Es fácil de entender y leer.
- Escalabilidad muy alta, es realmente sencillo añadir ranuras para nuevos atributos y relaciones.
- Fácil de añadir datos por defecto y encontrar atributos vacíos.

**Desventajas**

- En un sistema de deducción basado en frames, el mecanismo puede no ser procesado fácilmente.
- El mecanismo de deducción puede no ajustarse correctamente a nuevas situaciones.
- Es una aproximación demasiado general.

## 4. Reglas de Producción

El agente comprueba la condición, y si la condinción es válida, la acción de esa regla realiza los pasos para la resolución del problema. El proceso que realiza este agente se llama, ciclo de reconocimiento-toma de decisión.

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

**Ventajas**

- Las reglas son expresadas en lenguaje natural.
- Las reglas son altamente modificables, pueden ser fácilmente modificadas o eliminadas.

**Desventajas**

- No muestra ninguna capacidad de aprendizaje y no almacena el resultado para futuras aplicaciones.
- Durante la ejecución del programa, pueden ejecutarse demasiadas reglas en un momento determinad. Esto resulta muy ineficiente.

## Bibliografía

[1. What is Knowledge Representation in AI? Techniques You Need To Know](https://www.edureka.co/blog/knowledge-representation-in-ai/)  
[2. Knowledge Representation in Artificial intelligence](https://www.slideshare.net/YasirAhmedKhan/5-knowledgerepresentation-10-sldes)  
[3. Techniques of knowledge representation](https://www.javatpoint.com/ai-techniques-of-knowledge-representation)  
[4. Representación del Conocimiento en la I.A](https://es.slideshare.net/xTabuux/representacin-del-conocimiento-en-la-ia)  
[5. Classifying Knowledge Representation In Artificial Intelligence](https://www.fingent.com/blog/classifying-knowledge-representation-in-artificial-intelligence/)  
[6. Marcos (Frames)](https://freedoomforlife.wordpress.com/marcos-frames/)  
[7. Frame(artificial intelligence)](https://en.wikipedia.org/wiki/Frame_(artificial_intelligence))
