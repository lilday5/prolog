
# 📁 Documentación del archivo `arbol.pl`

Este archivo define un árbol genealógico en Prolog utilizando **hechos** y **reglas lógicas** para representar relaciones familiares, tanto básicas como extendidas.

---

## 👤 Predicados monarios (género de personas)

Se definen los géneros de los individuos en la base de conocimiento. Estos predicados son importantes para determinar relaciones como hermanos, tíos, primos, etc.

### Hombres

```prolog
hombre(juan).
hombre(carlos).
...
```

### Mujeres

```prolog
mujer(ana).
mujer(maria).
...
```

---

## 👨‍👩‍👧 Predicados binarios (relaciones de parentesco directo)

### Padres

```prolog
padre_de(juan, carlos).
padre_de(pedro, ana).
...
```

### Madres

```prolog
madre_de(luisa, carlos).
madre_de(carmen, ana).
...
```

Estos predicados indican quién es el padre o madre de una persona.

---

## 🔄 Predicados derivados (relaciones familiares extendidas)

Se definen reglas lógicas para deducir relaciones más complejas como abuelos, hermanos, tíos y primos.

### 👴 Abuelos y abuelas

```prolog
abuelo_de(X, Y) :- padre_de(X, Z), padre_de(Z, Y).
abuelo_de(X, Y) :- padre_de(X, Z), madre_de(Z, Y).
abuela_de(X, Y) :- madre_de(X, Z), padre_de(Z, Y).
abuela_de(X, Y) :- madre_de(X, Z), madre_de(Z, Y).
```

### 🧍‍♂️ Hermanos y 🧍‍♀️ Hermanas

```prolog
hermano_de(X, Y) :- hombre(X), padre_de(Z, X), padre_de(Z, Y), X \= Y.
hermana_de(X, Y) :- mujer(X), madre_de(Z, X), madre_de(Z, Y), X \= Y.
```

### 👨‍👧 Tíos y 👩‍👧 Tías

```prolog
tio_de(X, Y) :- hermano_de(X, Z), padre_de(Z, Y).
tia_de(X, Y) :- hermana_de(X, Z), madre_de(Z, Y).
```

### 🧑‍🤝‍🧑 Primos y primas

```prolog
primo_de(X, Y) :- hombre(X), padre_de(Z, X), padre_de(W, Y), hermano_de(Z, W).
prima_de(X, Y) :- mujer(X), madre_de(Z, X), madre_de(W, Y), hermana_de(Z, W).
```

Estas reglas verifican las conexiones familiares cruzadas y consideran el género del primo o prima.

---

## 👶 Nietos y nietas

```prolog
nieto_de(X, Y) :- (abuelo_de(Y, X); abuela_de(Y, X)), hombre(X).
nieta_de(X, Y) :- (abuelo_de(Y, X); abuela_de(Y, X)), mujer(X).
```

Diferencian entre nietos y nietas según el género.

---

## 🔍 Consultas permitidas

Estas relaciones pueden consultarse directamente desde la base de conocimiento:

```prolog
abuelo_de(X, Y).
abuela_de(X, Y).
hermano_de(X, Y).
hermana_de(X, Y).
tio_de(X, Y).
tia_de(X, Y).
primo_de(X, Y).
prima_de(X, Y).
padre_de(X, Y).
madre_de(X, Y).
```

---

## ✅ Conclusión

Este archivo permite:

- Representar una estructura familiar básica y extendida.
- Hacer inferencias automáticas sobre parentescos.
- Ser utilizado en sistemas expertos, chatbots, o prácticas de lógica en Prolog.

Ideal para tareas académicas o prototipos de inteligencia artificial simbólica.
