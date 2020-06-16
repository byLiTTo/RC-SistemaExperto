% =============================================================================
% SISTEMA EXPERTO AVANZADO
% Desarrollado en la Universidad de Huelva - REPRESENTACIÓN DEL CONOCIMIENTO
% Basado en github: https://github.com/linkyndy/expert-systems
% Traducido al español
% =============================================================================


% =============================================================================
% Inicializacion del Sistema Experto
% =============================================================================

inicio :-
    introduccion,
    reset_respuestas,
    busca_lenguaje(Lenguaje),
    descripcion(Lenguaje), n1.



introduccion :-
    write('¿Qué lenguaje de programación debería aprender primero?'), nl,
    write('Para responder, introduce el número de la opción, seguido de punto (.)'), nl, nl.



busca_lenguaje(Lenguaje) :-
    lenguaje(Lenguaje), !.



% =============================================================================
% Almacenar las respuestas de los usuarios para poder seguir su progreso
% =============================================================================

:- dynamic(progreso/2).




% =============================================================================
% Limpiar el almacenamiento del progreso del usuario
% =============================================================================

% reset_respuestas siempre debe devolver TRUE, porque retirar puede devolver
% TRUE o FALSE, fallamos en el primero y tenemos éxito en el segundo
reset_respuestas :-
    retirar(progreso(_,_)),
    fail.
reset_respuestas.



% =============================================================================
% Reglas para la base del conocimiento
% =============================================================================

% PYTHON ......................................................................

lenguaje(python) :-
    porque(para_ninos).

lenguaje(python) :-
    porque(no_lo_se).

lenguaje(python) :-
    porque(hacer_dinero),
    que_plataforma(facebook).

lenguaje(python) :-
    porque(hacer_dinero),
    que_plataforma(google).

lenguaje(python) :-
    porque(hacer_dinero),
    que_plataforma(web),
    web(back_end),
    trabajar_para(startup),
    intentar_algo_nuevo(no),
    juguete_favorito(lego).

lenguaje(python) :-
    porque(solo_por_diversion),
    prefiere_aprender(camino_facil).

lenguaje(python) :-
    porque(solo_por_diversion),
    prefiere_aprender(mejor_camino).

lenguaje(python) :-
    porque(estoy_interesado),
    prefiere_aprender(camino_facil).

lenguaje(python) :-
    porque(estoy_interesado),
    prefiere_aprender(mejor_camino).

lenguaje(python) :-
    porque(mejorar_yo_mismo),
    prefiere_aprender(camino_facil).

lenguaje(python) :-
    porque(mejorar_yo_mismo),
    prefiere_aprender(mejor_camino).

% JAVA ........................................................................    

lenguaje(java) :-
    why(hacer_dinero),
    que_plataforma(no_importa).

lenguaje(java) :-
    porque(hacer_dinero),
    que_plataforma(movil),
    que_sistema_operativo_movil(android).

lenguaje(java) :-
    porque(hacer_dinero),
    que_plataforma(web),
    web(back_end),
    trabajar_para(corporacion),
    piensa_sobre_microsoft(es_una_mierda).

lenguaje(java) :-
    porque(hacer_dinero),
    trabajar_para(empresa),
    piensa_sobre_microsoft(no_esta_mal).

lenguaje(java) :-
    porque(hacer_dinero),
    trabajar_para(empresa),
    piensa_sobre_microsoft(es_una_mierda).

lenguaje(java) :-
    porque(solo_por_diversion),
    prefiere_aprender(camino_dificil),
    coche(automatico).

lenguaje(java) :-
    porque(estoy_interesado),
    prefiere_aprender(camino_dificil),
    coche(automatico).

lenguaje(java) :-
    porque(mejorar_yo_mismo),
    prefiere_aprender(camino_dificil),
    coche(automatico).

% JAVASCRIPT ..................................................................    

lenguaje(javascript) :-
    porque(hacer_dinero),
    que_plataforma(web),
    web(front_end).

lenguaje(javascript) :-
    porque(hacer_dinero),
    que_plataforma(web),
    web(back_end),
    trabajar_para(startup),
    intentar_algo_nuevo(si).

% CPP .........................................................................    

lenguaje(cpp) :-
    porque(hacer_dinero),
    que_plataforma(gaming).

lenguaje(cpp) :-
    porque(solo_por_diversion),
    prefiere_aprender(el_camino_mas_dificil).

lenguaje(cpp) :-
    porque(estoy_interesado),
    prefiere_aprender(el_camino_mas_dificil).

lenguaje(cpp) :-
    porque(mejorar_yo_mismo),
    prefiere_aprender(el_camino_mas_dificil).

% C ...........................................................................

lenguaje(c) :-
    porque(solo_por_diversion),
    prefiere_aprender(camino_dificil),
    coche(manual).

lenguaje(c) :-
    porque(estoy_interesado),
    prefiere_aprender(camino_dificil),
    coche(manual).

lenguaje(c) :-
    porque(mejorar_yo_mismo),
    prefiere_aprender(camino_dificil),
    coche(manual).

% CSHARP ......................................................................

lenguaje(csharp) :-
    porque(hacer_dinero),
    que_plataforma(microsoft).

lenguaje(csharp) :-
    porque(hacer_dinero),
    que_plataforma(web),
    web(back_end),
    trabajar_para(corporacion),
    piensa_sobre_microsoft(soy_fan).

lenguaje(csharp) :-
    porque(hacer_dinero),
    que_plataforma(enterprise),
    piensa_sobre_microsoft(soy_fan).

% OBJECTIVEC ..................................................................    

lenguaje(objectivec) :-
    porque(hacer_dinero),
    que_plataforma(movil),
    que_sistema_operativo_movil(ios).

lenguaje(objectivec) :-
    porque(hacer_dinero),
    que_plataforma(apple).

% PHP .........................................................................

lenguaje(php) :-
    porque(hacer_dinero),
    que_plataforma(web),
    web(back_end),
    trabajar_para(startup),
    intentar_algo_nuevo(no),
    juguete_favorito(viejo).

% RUBY ........................................................................

lenguaje(ruby) :-
    porque(hacer_dinero),
    que_plataforma(web),
    web(back_end),
    trabajar_para(startup),
    intentar_algo_nuevo(no),
    juguete_favorito(play_doh).



% =============================================================================
% Preguntas para la base de conocimiento
% =============================================================================

pregunta(porque) :-
    write('¿Por qué quieres aprender a programar?'), nl.

pregunta(que_plataforma) :-
    write('¿Qué plataforma/campo?'), nl.

pregunta(que_sistema_operativo_movil) :-
    write('Qué sistama operativo?'), nl.

pregunta(web) :-
    write('¿En qué end, back o front?'), nl.

pregunta(trabajar_para) :-
    write('Quiero trabajar para ...'), nl.

pregunta(piensa_sobre_microsoft) :-
    write('¿Qué piensas sobre microsoft?'), nl.

pregunta(intentar_algo_nuevo) :-
    write('¿Quieres probar algo nuevo, con un gran potencial, pero con menos desarrollo?'), nl.

pregunta(juguete_favorito) :-
    write('¿Cuál es tu jueguete favorito?'), nl.

pregunta(prefiere_aprender) :-
    write('Yo prefiero aprender cosas ...'), nl.

pregunta(coche) :-
    write('¿Coche automático o manual?'), nl.



% =============================================================================
% Respuestas para la base de Conocimiento
% =============================================================================

respuesta(para_ninos) :-
    write('Para los ninos').

respuesta(no_lo_se) :-
    write('No lo sé').

respresuesta(hacer_dinero) :-
    write('Para hacer dinero').

respuesta(solo_por_diversion) :-
    write('Solo por diversion').

respuesta(estoy_interesado) :-
    write('Estoy interesado').

respuesta(mejorar_yo_mismo) :-
    write('Para mejorar').

respuesta(no_importa) :-
    write('No importa').

respuesta(gaming) :-
    write('3D/Gaming').

respuesta(movil) :-
    write('Móvil').

respuesta(facebook) :-
    write('Facebook').

respuesta(google) :-
    write('Google').

respuesta(microsoft) :-
    write('Microsoft').

respuesta(apple) :-
    write('Apple').

respuesta(web) :-
    write('Web').

respuesta(enterprise) :-
    write('Enterprise').

respuesta(empresa) :-
    write('Empresa').

respuesta(ios) :-
    wrote('iOs').

respuesta(android) :-
    write('Android').

respuesta(front_end) :-
    write('Front-End (Interfaz Web)').

respuesta(back_end) :-
    write('Back-end ("cerebro" detrás de una web').

respuesta(startup) :-
    write('Startup').

respuesta(corporacion) :-
    write('Corporación').

respuesta(soy_fan) :-
    write('Soy fan').

respuesta(no_esta_mal) :-
    write('No está mal').

respuesta(es_una_mierda) :-
    write('Es una mierda').

respuesta(si) :-
    write('Sí').

respuesta(no) :-
    write('No').

respuesta(lego) :-
    write('Lego').

respuesta(play_doh) :-
    write('Play-doh').

respuesta(viejo) :-
    write('Juguete viejo').

respuesta(camino_facil) :-
    write('el camino fácil').

respuesta(camino_dificil) :-
    write('el camino difícil').

respuesta(mejor_camino) :-
    write('el mejor camino').

respuesta(el_camino_mas_dificil) :-
    write('El más difícil, pero útil para aprender nuevos lenguajes en el futuro').

respuesta(automatico) :-
    write('Automático').

respuesta(manual) :-
    write('Manual').



% =============================================================================
% Descripción del lenguaje para la base de conocimiento
% =============================================================================

describe(python) :-
    write('Python'), nl,
    write('Considerado por muchos como el mejor lenguaje de programación para principiantes'), nl,
    write('Fácil de aprender').

describe(java) :-
    write('Java'), nl,
    write('Uno de los más demandados y mejor pagados lenguajes de programación'), nl,
    write('Eslogan: write once, work everywhere').

describe(c) :-
    write('Lingua franca de los lenguajes de programación'), nl,
    write('Uno de los lenguajes más antiguos y frecuentes del mundo').

describe(cpp) :-
    write('C++'), nl,
    write('Versión mejorada de C con un montón de características nuevas'), nl,
    write('Recomendado si tienes un mentor que te guíe').

describe(javascript) :- 
    write('JavaScript'), nl,
    write('El scripting language más popular para clientes web'), nl,
    write('Uno de los que se debe aprender para le desarrollo de front-end, a parte de HTML y CSS').

describe(csharp) :-
    write('C#'), nl,
    write('Una de las opciones más usadas por las empresas para crear páginas web y aplicaciones con .Net framework'), nl,
    write('Similar a Java en la sintaxis básica y algunas características').

describe(ruby) :-
    write('Ruby'), nl,
    write('Principalmente conocido por web framework, Ruby on Rails'), nl,
    write('Se enfoca en tener hechas las cosas').

describe(php) :-
    write('PHP'), nl,
    write('Adecuado para construir sitios pequeños y simples en muy poco tiempo'), nl,
    write('Tiene soporte en casi todos los servicios de alojamiento web d bajo precio').

describe(objectivec) :-
    write('Objetive-C'), nl,
    write('Lenguaje primario usado por Apple en MacOSX e iOS'), nl,
    write('Escogelo si quieres enfocarte en el desarrollo para iOS y OSX').

