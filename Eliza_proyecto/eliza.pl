% ========== eliza.pl ==========
:- use_module(eliza_arbol).
:- use_module(eliza_enfermedades).
:- use_module(eliza_pasatiempos).

% Inicia el programa
eliza :-
    mostrar_banner,
    writeln("Hola, soy Eliza. ¿En qué te puedo ayudar hoy?"),
    loop.

loop :-
    write('Tú: '),
    read_line_to_string(user_input, Input),
    atom_string(InputAtom, Input),
    downcase_atom(InputAtom, Lower),
    atomic_list_concat(Words, ' ', Lower),
    procesar_input(Words),
    loop.

procesar_input(Input) :-
    ( arbol(Input) ->
        true
    ; enfermedad(Input) ->
        true
    ; pasatiempo(Input) ->
        true
    ; saludo(Input) ->
        true
    ; desconocido(Input)
    ), !.

saludo(['hola']) :-
    writeln('Eliza: ¡Un gusto saludarte!').

saludo(['adios']) :-
    writeln('Eliza: ¡Hasta pronto!'),
    halt.

desconocido(_) :-
    writeln('Eliza: No entendí bien. ¿Puedes ser más específico?').

mostrar_banner :-
    nl,
    writeln("███████╗██╗     ██╗███████╗ █████╗"),
    writeln("██╔════╝██║     ██║╚══███╔╝██╔══██╗"),
    writeln("█████╗  ██║     ██║  ███╔╝ ███████║"),
    writeln("██╔══╝  ██║     ██║██╔╝    ██╔══██║"),
    writeln("███████╗███████╗██║███████╗██║  ██║"),
    writeln("╚══════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝"),
    writeln("                                   "),
    writeln("     E L I Z A - ChatBot en Prolog"),
    nl.