<img src="imagenes/LogoETSI.png" width="150"> <img src="imagenes/HuecoBlanco.png" width="200"> <img src="imagenes/LogoLiTTo.png" width="200"> <img src="imagenes/HuecoBlanco.png" width="140"> <img src="imagenes/LogoUHU.png" width="200">

#   Trabajo Práctico de Representación del Conocimiento
    Universidad de Huelva
    Curso 2019-2020    
   

##  Intención de la práctica
    Con el desarrollo de esta práctica, pretendemos realizar un sistema experto implementado en el lenguaje declaratico
    PROLOG, una vez creado el sistema y sea totalmente funcional, desarrollaremos una skill de Alexa, la cual hará de 
    mediadora entre el usurio y nuestro sistema. Alexa leerá las opciones del sistema y reconocerá la voz del usuario 
    que dirá con su voz dirá la opción que desee, alexa "dirá" internamente a prolog qué opción ha sido la seleccionada 
    y la ejecutará para que nos devuelva otra salida.
    
    Como sistma experto nos vamos a basar en un Github que hemos encontrado, pese a que contenia errores, nos hemos 
    dispuesto a corregirlos, incluso pretendemos traducirlo, ya que apenas hemos encontrado información en español, 
    aunque sabemos que es importante el uso de idimas, queriamos que exista información en español, para que quien quiera 
    realizar una práctica similar, no tenga que dedicar tiempo en entender el idioma y pueda centrarse al completo en 
    el desarrollo.

## Diseño del Sistema Experto en Prolog

    Para la implementación del sistema experto, hicimos uso del lenguaje declarativo "Prolog", pese a que en la 
    asignatura nos enseñan a programar en este lenguaje, tuvimos que buscar información por otros medios, ya que
    los conocimientos que necesitamos iban un poco más allá del objetivo de la asignatura, teniamos entre manos
    un proyecto en cierta medida ambicioso.

    Nos hemos basado casi por completo en este repositorio: https://github.com/linkyndy/expert-systems
    Es muy recomendable, ya que nos sirvió para aprender a como hacer un sistema experto en condiciones.
    En la página: https://www.metalevel.at/prolog/expertsystems pudimos hacernos una idea de qué camino tomar,
    por así decirlo existen 3 tipos de implementaciones y en función de lo que busquemos nos sirve más una u otra.
    Realmente no nos decantamos por uno en concreto, si no que hicimos una especie de mezcla que una vez acabado, no
    sabemos muy bien en qué categoría meter. Nos creamos una especie de árbol de decisión para tener más claro los
    caminos que estábamos generando y también para facilitar la fase de testeo, en la que encontramos bastantes fallos
    que nos habíamos dejado por el camino. 

<img src="imagenes/Arbol.png" width="900">
    
    Incluso hay que mencionar que conseguimos corregir un fallo que venía en el
    repositorio en el que nos estábamos basando. Como queríamos aportar un pequeño toque de originalidad y diferencia,
    decidimos traducirlo al español, que siempre es más cómodo para quien esté buscando información y no quiera perder
    tiempo con los pequeños atrasos que pueda hacer el trabajar con una lengua extranjera.
