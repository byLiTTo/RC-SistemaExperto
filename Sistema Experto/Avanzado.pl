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
    describe(Lenguaje), nl.



introduccion :-
    write('Que lenguaje de programacion deberia aprender primero?'), nl,
    write('Para responder, introduce el numero de la opcion, seguido de punto (.)'), nl, nl.



busca_lenguaje(Lenguaje) :-
    lenguaje(Lenguaje), !.



% =============================================================================
% Almacenar las respuestas de los usuarios para poder seguir su progress
% =============================================================================

:- dynamic(progress/2).




% =============================================================================
% Limpiar el almacenamiento del progress del usuario
% =============================================================================

% reset_respuestas siempre debe devolver TRUE, porque retirar puede devolver
% TRUE o FALSE, fallamos en el primero y tenemos éxito en el segundo
reset_respuestas :-
    retract(progress(_,_)),
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
    porque(hacer_dinero),
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
    write('Por que quieres aprender a programar?'), nl.

pregunta(que_plataforma) :-
    write('Que plataforma/campo?'), nl.

pregunta(que_sistema_operativo_movil) :-
    write('Que sistama operativo?'), nl.

pregunta(web) :-
    write('En que end, back o front?'), nl.

pregunta(trabajar_para) :-
    write('Quiero trabajar para ...'), nl.

pregunta(piensa_sobre_microsoft) :-
    write('Que piensas sobre microsoft?'), nl.

pregunta(intentar_algo_nuevo) :-
    write('Quieres probar algo nuevo, con un gran potencial, pero con menos desarrollo?'), nl.

pregunta(juguete_favorito) :-
    write('Cual es tu jueguete favorito?'), nl.

pregunta(prefiere_aprender) :-
    write('Yo prefiero aprender cosas ...'), nl.

pregunta(coche) :-
    write('Coche automatico o manual?'), nl.



% =============================================================================
% Respuestas para la base de Conocimiento
% =============================================================================

respuesta(para_ninos) :-
    write('Para los ninos').

respuesta(no_lo_se) :-
    write('No lo se').

respuesta(hacer_dinero) :-
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
    write('Movil').

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
    write('iOs').

respuesta(android) :-
    write('Android').

respuesta(front_end) :-
    write('Front-End (Interfaz Web)').

respuesta(back_end) :-
    write('Back-end ("cerebro" detras de una web').

respuesta(startup) :-
    write('Startup').

respuesta(corporacion) :-
    write('Corporacion').

respuesta(soy_fan) :-
    write('Soy fan').

respuesta(no_esta_mal) :-
    write('No esta mal').

respuesta(es_una_mierda) :-
    write('Es una mierda').

respuesta(si) :-
    write('Si').

respuesta(no) :-
    write('No').

respuesta(lego) :-
    write('Lego').

respuesta(play_doh) :-
    write('Play-doh').

respuesta(viejo) :-
    write('Juguete viejo').

respuesta(camino_facil) :-
    write('el camino facil').

respuesta(camino_dificil) :-
    write('el camino dificil').

respuesta(mejor_camino) :-
    write('el mejor camino').

respuesta(el_camino_mas_dificil) :-
    write('El mas difícil, pero util para aprender nuevos lenguajes en el futuro').

respuesta(automatico) :-
    write('Automatico').

respuesta(manual) :-
    write('Manual').



% =============================================================================
% Descripción del lenguaje para la base de conocimiento
% =============================================================================

describe(python) :-
    write('Python'), nl,
    write('Considerado por muchos como el mejor lenguaje de programacion para principiantes'), nl,
    write('Facil de aprender').

describe(java) :-
    write('Java'), nl,
    write('Uno de los mas demandados y mejor pagados lenguajes de programacion'), nl,
    write('Eslogan: write once, work everywhere').

describe(c) :-
    write('Lingua franca de los lenguajes de programacion'), nl,
    write('Uno de los lenguajes más antiguos y frecuentes del mundo').

describe(cpp) :-
    write('C++'), nl,
    write('Version mejorada de C con un monton de caracteristicas nuevas'), nl,
    write('Recomendado si tienes un mentor que te guie').

describe(javascript) :- 
    write('JavaScript'), nl,
    write('El scripting language mas popular para clientes web'), nl,
    write('Uno de los que se debe aprender para le desarrollo de front-end, a parte de HTML y CSS').

describe(csharp) :-
    write('C#'), nl,
    write('Una de las opciones mas usadas por las empresas para crear paginas web y aplicaciones con .Net framework'), nl,
    write('Similar a Java en la sintaxis basica y algunas caracteristicas').

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



% =============================================================================
% Asociación de las respuestas con las preguntas de la base de conocimiento
% =============================================================================

porque(Respuesta) :-
    progress(porque,Respuesta).
porque(Respuesta) :-
    \+ progress(porque,_),
    ask(porque,Respuesta, [para_ninos,no_lo_se,hacer_dinero,solo_por_diversion,estoy_interesado,mejorar_yo_mismo]).

que_plataforma(Respuesta) :-
    progress(que_plataforma,Respuesta).
que_plataforma(Respuesta) :-
    \+ progress(que_plataforma,_),
    ask(que_plataforma,Respuesta, [no_importa,gaming,movil,facebook,google,microsoft,apple,web,enterprise]).

que_sistema_operativo_movil(Respuesta) :-
    progress(que_sistema_operativo_movil,Respuesta).
que_sistema_operativo_movil(Respuesta) :-
    \+ progress(que_sistema_operativo_movil,_),
    ask(que_sistema_operativo_movil,Respuesta, [ios,android]).

web(Respuesta) :-
    progress(web,Respuesta).
web(Respuesta) :-
    \+ progress(web,_),
    ask(web,Respuesta, [front_end,back_end]).

trabajar_para(Respuesta) :-
    progress(trabajar_para,Respuesta).
trabajar_para(Respuesta) :-
    \+ progress(trabajar_para,_),
    ask(trabajar_para,Respuesta, [startup,corporacion]).

piensa_sobre_microsoft(Respuesta) :-
    progress(piensa_sobre_microsoft,Respuesta).
piensa_sobre_microsoft(Respuesta) :-
    \+ progress(piensa_sobre_microsoft, _),
    ask(piensa_sobre_microsoft,Respuesta, [soy_fan,no_esta_mal,es_una_mierda]).

intentar_algo_nuevo(Respuesta) :-
    progress(intentar_algo_nuevo,Respuesta).
intentar_algo_nuevo(Respuesta) :-
    \+ progress(intentar_algo_nuevo,_),
    ask(intentar_algo_nuevo,Respuesta, [si,no]).

juguete_favorito(Respuesta) :-
    progress(juguete_favorito,Respuesta).
juguete_favorito(Respuesta) :-
    \+ progress(juguete_favorito,_),
    ask(juguete_favorito,Respuesta, [lego,play_doh,viejo]).

prefiere_aprender(Respuesta) :-
    progress(prefiere_aprender,Respuesta).
prefiere_aprender(Respuesta) :-
    \+ progress(prefiere_aprender,_),
    ask(prefiere_aprender,Respuesta, [camino_facil,mejor_camino,camino_dificil,el_camino_mas_dificil]).

coche(Respuesta) :-
    progress(coche,Respuesta).
coche(Respuesta) :-
    \+ progress(coche,_),
    ask(coche,Respuesta, [automatico,manual]).



% =============================================================================
% Producción de una lista de respuesta en un formato correcto
% =============================================================================

respuestas([], _).
respuestas([Cabeza|Resto],Index) :-
    write(Index), write(' '), respuesta(Cabeza), nl,
    SiguienteIndex is Index + 1,
    respuestas(Resto,SiguienteIndex).



% =============================================================================
% Analizamos los indices y devolvemos una respuesta
% =============================================================================

parse(0, [Cabeza | _], Cabeza).
% parse(Index, [Cabeza|Resto], Solucion) :-
parse(Index, [_|Resto], Solucion) :-
    Index > 0,
    SiguienteIndex is Index - 1,
    parse(SiguienteIndex, Resto, Solucion).



% =============================================================================
% Hacer la pregunta al usuario y guardar la respuesta
% =============================================================================

ask(Pregunta, Respuesta, Opciones) :-
    pregunta(Pregunta),
    respuestas(Opciones, 0),
    read(Index),
    parse(Index, Opciones, Solucion),
    asserta(progress(Pregunta, Solucion)),
    Solucion = Respuesta.


    