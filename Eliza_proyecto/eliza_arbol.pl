% ========== eliza_arbol.pl ==========
:- module(eliza_arbol, [arbol/1]).

% Predicados monarios (hombres y mujeres)
hombre(juan).
hombre(carlos).
hombre(pedro).
hombre(luis).
hombre(raul).
hombre(fernando).
hombre(diego).
hombre(mario).
hombre(alberto).
hombre(manuel).
hombre(ernesto).
hombre(ricardo).
hombre(javier).
hombre(alejandro).

mujer(ana).
mujer(maria).
mujer(luisa).
mujer(carmen).
mujer(sofia).
mujer(julia).
mujer(elena).
mujer(marta).
mujer(patricia).
mujer(isabel).
mujer(rosa).
mujer(gabriela).
mujer(claudia).
mujer(monica).

% Predicados binarios (relaciones familiares)
padre_de(juan, carlos).
padre_de(juan, maria).
padre_de(pedro, ana).
padre_de(pedro, luis).
padre_de(raul, fernando).
padre_de(raul, sofia).
padre_de(diego, elena).
padre_de(diego, mario).
padre_de(alberto, patricia).
padre_de(manuel, ricardo).
padre_de(manuel, ernesto).
padre_de(ernesto, javier).
padre_de(ernesto, alejandro).
padre_de(ricardo, rosa).
padre_de(ricardo, gabriela).

madre_de(luisa, carlos).
madre_de(luisa, maria).
madre_de(carmen, ana).
madre_de(carmen, luis).
madre_de(julia, fernando).
madre_de(julia, sofia).
madre_de(marta, elena).
madre_de(marta, mario).
madre_de(patricia, alberto).
madre_de(isabel, ricardo).
madre_de(isabel, ernesto).
madre_de(rosa, javier).
madre_de(rosa, alejandro).
madre_de(gabriela, claudia).
madre_de(gabriela, monica).

% Predicados derivados (relaciones familiares extendidas)
abuelo_de(X, Y) :- padre_de(X, Z), padre_de(Z, Y).
abuelo_de(X, Y) :- padre_de(X, Z), madre_de(Z, Y).

abuela_de(X, Y) :- madre_de(X, Z), padre_de(Z, Y).
abuela_de(X, Y) :- madre_de(X, Z), madre_de(Z, Y).

hermano_de(X, Y) :- hombre(X), padre_de(Z, X), padre_de(Z, Y), X \= Y.
hermano_de(X, Y) :- hombre(X), madre_de(Z, X), madre_de(Z, Y), X \= Y.

hermana_de(X, Y) :- mujer(X), madre_de(Z, X), madre_de(Z, Y), X \= Y.
hermana_de(X, Y) :- mujer(X), padre_de(Z, X), padre_de(Z, Y), X \= Y.

tio_de(X, Y) :- hermano_de(X, Z), padre_de(Z, Y).
tio_de(X, Y) :- hermano_de(X, Z), madre_de(Z, Y).

tia_de(X, Y) :- hermana_de(X, Z), padre_de(Z, Y).
tia_de(X, Y) :- hermana_de(X, Z), madre_de(Z, Y).

primo_de(X, Y) :- hombre(X), padre_de(Z, X), padre_de(W, Y), hermano_de(Z, W).
primo_de(X, Y) :- hombre(X), madre_de(Z, X), madre_de(W, Y), hermano_de(Z, W).
primo_de(X, Y) :- hombre(X), padre_de(Z, X), madre_de(W, Y), hermana_de(Z, W).
primo_de(X, Y) :- hombre(X), madre_de(Z, X), padre_de(W, Y), hermana_de(Z, W).

prima_de(X, Y) :- mujer(X), padre_de(Z, X), padre_de(W, Y), hermana_de(Z, W).
prima_de(X, Y) :- mujer(X), madre_de(Z, X), madre_de(W, Y), hermana_de(Z, W).
prima_de(X, Y) :- mujer(X), padre_de(Z, X), madre_de(W, Y), hermano_de(Z, W).
prima_de(X, Y) :- mujer(X), madre_de(Z, X), padre_de(W, Y), hermano_de(Z, W).

% Nieto y nieta con distinción de género
nieto_de(X, Y) :- (abuelo_de(Y, X); abuela_de(Y, X)), hombre(X).
nieta_de(X, Y) :- (abuelo_de(Y, X); abuela_de(Y, X)), mujer(X).

% Consultas (respuestas tipo chatbot) - con y sin signo de interrogación
arbol(['quien', 'es', 'el', 'padre', 'de', X, '?']) :-
    padre_de(P, X),
    format('Eliza: El padre de ~w es ~w.~n', [X, P]).

arbol(['quien', 'es', 'el', 'padre', 'de', X]) :-
    padre_de(P, X),
    format('Eliza: El padre de ~w es ~w.~n', [X, P]).

arbol(['quien', 'es', 'la', 'madre', 'de', X, '?']) :-
    madre_de(M, X),
    format('Eliza: La madre de ~w es ~w.~n', [X, M]).

arbol(['quien', 'es', 'la', 'madre', 'de', X]) :-
    madre_de(M, X),
    format('Eliza: La madre de ~w es ~w.~n', [X, M]).

arbol(['quien', 'es', 'el', 'abuelo', 'de', X, '?']) :-
    abuelo_de(A, X),
    format('Eliza: El abuelo de ~w es ~w.~n', [X, A]).

arbol(['quien', 'es', 'el', 'abuelo', 'de', X]) :-
    abuelo_de(A, X),
    format('Eliza: El abuelo de ~w es ~w.~n', [X, A]).

arbol(['quien', 'es', 'la', 'abuela', 'de', X, '?']) :-
    abuela_de(A, X),
    format('Eliza: La abuela de ~w es ~w.~n', [X, A]).

arbol(['quien', 'es', 'la', 'abuela', 'de', X]) :-
    abuela_de(A, X),
    format('Eliza: La abuela de ~w es ~w.~n', [X, A]).

arbol(['quien', 'es', 'el', 'hermano', 'de', X, '?']) :-
    hermano_de(H, X),
    format('Eliza: El hermano de ~w es ~w.~n', [X, H]).

arbol(['quien', 'es', 'el', 'hermano', 'de', X]) :-
    hermano_de(H, X),
    format('Eliza: El hermano de ~w es ~w.~n', [X, H]).

arbol(['quien', 'es', 'la', 'hermana', 'de', X, '?']) :-
    hermana_de(H, X),
    format('Eliza: La hermana de ~w es ~w.~n', [X, H]).

arbol(['quien', 'es', 'la', 'hermana', 'de', X]) :-
    hermana_de(H, X),
    format('Eliza: La hermana de ~w es ~w.~n', [X, H]).

arbol(['quien', 'es', 'el', 'tio', 'de', X, '?']) :-
    tio_de(T, X),
    format('Eliza: El tío de ~w es ~w.~n', [X, T]).

arbol(['quien', 'es', 'el', 'tio', 'de', X]) :-
    tio_de(T, X),
    format('Eliza: El tío de ~w es ~w.~n', [X, T]).

arbol(['quien', 'es', 'la', 'tia', 'de', X, '?']) :-
    tia_de(T, X),
    format('Eliza: La tía de ~w es ~w.~n', [X, T]).

arbol(['quien', 'es', 'la', 'tia', 'de', X]) :-
    tia_de(T, X),
    format('Eliza: La tía de ~w es ~w.~n', [X, T]).

arbol(['quien', 'es', 'el', 'primo', 'de', X, '?']) :-
    primo_de(P, X),
    format('Eliza: El primo de ~w es ~w.~n', [X, P]).

arbol(['quien', 'es', 'el', 'primo', 'de', X]) :-
    primo_de(P, X),
    format('Eliza: El primo de ~w es ~w.~n', [X, P]).

arbol(['quien', 'es', 'la', 'prima', 'de', X, '?']) :-
    prima_de(P, X),
    format('Eliza: La prima de ~w es ~w.~n', [X, P]).

arbol(['quien', 'es', 'la', 'prima', 'de', X]) :-
    prima_de(P, X),
    format('Eliza: La prima de ~w es ~w.~n', [X, P]).

arbol(['quien', 'es', 'el', 'nieto', 'de', X, '?']) :-
    nieto_de(N, X),
    format('Eliza: El nieto de ~w es ~w.~n', [X, N]).

arbol(['quien', 'es', 'el', 'nieto', 'de', X]) :-
    nieto_de(N, X),
    format('Eliza: El nieto de ~w es ~w.~n', [X, N]).

arbol(['quien', 'es', 'la', 'nieta', 'de', X, '?']) :-
    nieta_de(N, X),
    format('Eliza: La nieta de ~w es ~w.~n', [X, N]).

arbol(['quien', 'es', 'la', 'nieta', 'de', X]) :-
    nieta_de(N, X),
    format('Eliza: La nieta de ~w es ~w.~n', [X, N]).
