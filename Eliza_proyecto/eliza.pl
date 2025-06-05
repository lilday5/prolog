:- use_module(eliza_arbol).
:- use_module(eliza_enfermedades).
:- use_module(eliza_pasatiempos).
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_parameters)).
:- use_module(library(http/http_json)).
:- use_module(library(http/http_files)).

:- initialization(server).

server :-
    http_server(http_dispatch, [port(8081)]).

:- http_handler(root(.), handle_root, []).
:- http_handler(root(eliza), handle_eliza, []).
:- http_handler(root(banner), handle_banner, []).

handle_root(Request) :-
    http_reply_file('index.html', [], Request).

handle_eliza(Request) :-
    http_parameters(Request, [ msg(Msg, [string]) ]),
    string_lower(Msg, Lower),
    atomic_list_concat(Words, ' ', Lower),
    with_output_to(string(Output), procesar_input(Words)),
    reply_json(json{response: Output}).

handle_banner(_Request) :-
    format('Content-type: text/plain; charset=UTF-8~n~n'),
    with_output_to(string(Banner), mostrar_banner),
    writeln(Banner).

% Inicia el programa interactivo
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
    ( saludo(Input) ->
        true
    ; arbol(Input) ->
        true
    ; enfermedad(Input) ->
        true
    ; pasatiempo(Input) ->
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
    writeln(" ********************************* "),
    writeln(" ********************************* "),
    writeln("                                   "),
    writeln("███████╗██╗     ██╗███████╗ █████╗"),
    writeln("██╔════╝██║     ██║╚══███╔╝██╔══██╗"),
    writeln("█████╗  ██║     ██║  ███╔╝ ███████║"),
    writeln("██╔══╝  ██║     ██║██╔╝    ██╔══██║"),
    writeln("███████╗███████╗██║███████╗██║  ██║"),
    writeln("╚══════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝"),
    writeln("                                   "),
    writeln(" ********************************* "),
    writeln(" ********************************* "),
    writeln("     E L I Z A - ChatBot en Prolog"),
    nl.
