% ========== eliza_pasatiempos.pl ==========
:- module(eliza_pasatiempos, [pasatiempo/1]).

% Lista de pasatiempos conocidos
pasatiempo_conocido(dibujar).
pasatiempo_conocido(ajedrez).
pasatiempo_conocido(correr).
pasatiempo_conocido(nadar).
pasatiempo_conocido(guitarra).
pasatiempo_conocido(cocinar).
pasatiempo_conocido(bailar).
pasatiempo_conocido(peliculas).
pasatiempo_conocido(musica).
pasatiempo_conocido(leer).

% Respuestas del chatbot
pasatiempo(['me', 'gusta', X]) :-
    pasatiempo_conocido(X),
    format('Eliza: ¡Qué bien! A mí también me gusta ~w.~n', [X]).

pasatiempo(['me', 'gusta', X]) :-
    \+ pasatiempo_conocido(X),
    format('Eliza: Interesante. No conozco mucho sobre ~w, pero suena divertido.~n', [X]).

pasatiempo(['odio', X]) :-
    pasatiempo_conocido(X),
    format('Eliza: Vaya, no todos disfrutan ~w. ¿Qué no te gusta de eso?~n', [X]).

pasatiempo(['prefiero', X]) :-
    pasatiempo_conocido(X),
    format('Eliza: ¡Buena elección! ~w es un pasatiempo muy popular.~n', [X]).

pasatiempo(['quiero', 'inicializar', 'un', 'repositorio', 'en', 'git']) :-
    writeln('Eliza: Puedes hacerlo con los siguientes comandos:'),
    writeln('git init'),
    writeln('git remote add origin git@gitlab.com:lilday5/prolog.git'),
    writeln('git add .'),
    writeln('git commit -m "Initial commit"'),
    writeln('git push origin main').

pasatiempo(['quiero', 'inicializar', 'un', 'repo', 'en', 'git']) :-
    writeln('Eliza: Puedes hacerlo con los siguientes comandos:'),
    writeln('git init'),
    writeln('git remote add origin git@gitlab.com:lilday5/prolog.git'),
    writeln('git add .'),
    writeln('git commit -m "Initial commit"'),
    writeln('git push origin main').

pasatiempo(['quiero', 'hacer', 'una', 'bomba']) :-
    writeln('Eliza: Esas busquedas no se pueden hacer, pueden ser ilegales').

pasatiempo(['se', 'puede', 'comprar', 'uranio']) :-
    writeln('Eliza:  :( '),
    writeln('Eliza: Esas busquedas no se pueden hacer, pueden ser ilegales').


pasatiempo(['quiero', 'pedir', 'comida', 'por', 'app']) :-
    writeln('Eliza: Existen bastantes aplicaciones para celular como: '),
    writeln('Eliza: Uber Eats '),
    writeln('Eliza: Glovo '),
    writeln('Eliza: Rappi '),
    writeln('Eliza: PedidosYa '),
    writeln('Eliza: etc. ').

pasatiempo(['para', 'que', 'so', 'estan', 'disponibles']) :-
    writeln('Eliza: Para android y iOS ').

pasatiempo(['para', 'que', 'sistemas', 'operativos', 'estan', 'disponibles']) :-
    writeln('Eliza: Para android y iOS ').