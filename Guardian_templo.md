
# 🛡️ Guardianes y Templos en Prolog

Este código en Prolog representa un sistema de guardianes y templos con restricciones sobre qué guardián puede custodiar qué templo. Se busca una asignación válida en la que cada guardián custodie un templo distinto, respetando sus restricciones.

---

## 🧍 Predicados monarios: Guardianes

```prolog
guardian(apolo).
guardian(hecate).
guardian(ares).
guardian(hermes).
```

---

## 🏛️ Predicados monarios: Templos

```prolog
templo(fuego).
templo(agua).
templo(tierra).
templo(aire).
```

---

## 🔗 Relación binaria: `puede_custodiar/2`

Define qué templos puede custodiar cada guardián.

```prolog
puede_custodiar(apolo, agua).
puede_custodiar(apolo, aire).    % Apolo no cuida fuego ni tierra

puede_custodiar(hecate, fuego).
puede_custodiar(hecate, agua).
puede_custodiar(hecate, tierra). % Hécate no cuida aire

puede_custodiar(ares, fuego).
puede_custodiar(ares, tierra).   % Ares no cuida agua ni aire

puede_custodiar(hermes, fuego).
puede_custodiar(hermes, agua).   % Hermes cuida fuego o agua
```

---

## ✅ Solución válida: Asignación sin repetir templos

```prolog
solucion(Apolo, Hecate, Ares, Hermes) :-
    puede_custodiar(apolo, Apolo),
    puede_custodiar(hecate, Hecate),
    puede_custodiar(ares, Ares),
    puede_custodiar(hermes, Hermes),

    % Asegurar que cada guardián tenga un templo distinto
    Apolo \= Hecate, Apolo \= Ares, Apolo \= Hermes,
    Hecate \= Ares, Hecate \= Hermes,
    Ares \= Hermes.
```

---

## 🧠 Uso

Puedes ejecutar consultas como:

```prolog
?- solucion(A, H, R, M).
```

Para obtener todas las combinaciones válidas de asignación de templos a guardianes.

