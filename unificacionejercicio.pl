Problema 1: Los guardianes de los templos
Cuatro guardianes (Apolo, Hécate, Ares y Hermes) custodian templos mitológicos asociados con diferentes elementos (fuego, Lagua, tierra y aire). Sabemos que:
- Apolo no cuida el templo de fuego ni el de tierra.
- Hécate no cuida el templo de aire.
- Ares no cuida el templo de agua ni de aire..
- Hermes cuida el templo de fuego o de agua.
Pregunta: ¿Qué templo cuida cada guardián?


% Los elementos
elemento(fuego).
elemento(agua).
elemento(tierra).
elemento(aire).

% Los guardianes
guardian(apolo).
guardian(hecate).
guardian(ares).
guardian(hermes).

templos(Asignaciones) :-
    Asignaciones = [apolo-E1, hecate-E2, ares-E3, hermes-E4],
    permutation([fuego, agua, tierra, aire], [E1, E2, E3, E4]),

    % Restricciones:
    E1 \= fuego,
    E1 \= tierra,
    E2 \= aire,
    E3 \= agua,
    E3 \= aire,
    (E4 = fuego ; E4 = agua).



