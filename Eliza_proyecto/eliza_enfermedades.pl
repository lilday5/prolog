% ========== eliza_enfermedades.pl ==========
:- module(eliza_enfermedades, [enfermedad/1]).

enfermedad(['tengo', 'fiebre']) :-
    writeln('Eliza: Podrías tener una infección. ¿Tienes escalofríos también?').

enfermedad(['tengo', 'dolor', 'de', 'cabeza']) :-
    writeln('Eliza: Puede ser migraña. ¿También sientes náuseas?').

enfermedad(['tengo', 'fiebre', 'y', 'dolor', 'de', 'cabeza']) :-
    writeln('Eliza: Es posible que sea gripe. ¿Has tenido tos o congestión?').

enfermedad(['tengo', 'convulsiones']) :-
    writeln('Eliza: Esto puede ser grave. Te recomiendo buscar atención médica urgente.').
