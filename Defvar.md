
# 📋 Table of Contents

---

## 1. Cálculo del Sueldo de un Trabajador

**Enunciado:**  
Calcular el sueldo que le corresponde a un trabajador de una empresa que cobra 40,000 euros anuales. El cálculo se realiza según los siguientes criterios:

- Más de 10 años: aumento del 10%
- Más de 5 años pero menos de 10: aumento del 7%
- Más de 3 años pero menos de 5: aumento del 5%
- 3 años o menos: aumento del 3%

**Código en Lisp:**

```lisp
(defun calcular-sueldo (anos)
  (let ((sueldo-base 40000))
    (cond ((> anos 10) (* sueldo-base 1.10))  ; Más de 10 años, aumento del 10%
          ((> anos 5)  (* sueldo-base 1.07))  ; Más de 5 años, aumento del 7%
          ((> anos 3)  (* sueldo-base 1.05))  ; Más de 3 años, aumento del 5%
          (t           (* sueldo-base 1.03)))))  ; 3 años o menos, aumento del 3%
```

---

## 2. Nivel de Agua y Litros según Peso de Ropa

**Enunciado:**  
El programa debe leer el peso en libras de una cantidad de ropa a lavar. Dependiendo del peso, mostrará el nivel de agua y los litros necesarios. Si el peso es mayor a 30 libras, la lavadora no funcionará.

**Algoritmo en pseudocódigo:**

```text
Inicio
  Escribir "Ingrese el peso en libras de la ropa:"
  Leer peso

  Si peso > 30 Entonces
    Escribir "⚠ Error: La lavadora no puede funcionar con más de 30 libras."
  Sino
    Si peso >= 22 Entonces
      nivel ← "Máximo"
      litros ← 50
    Sino Si peso >= 15 Entonces
      nivel ← "Alto"
      litros ← 40
    Sino Si peso >= 8 Entonces
      nivel ← "Medio"
      litros ← 30
    Sino
      nivel ← "Mínimo"
      litros ← 20
    FinSi

    Escribir "Nivel de agua:", nivel
    Escribir "Litros necesarios:", litros
  FinSi
Fin
```

---

## 3. Entrada a la Fiesta de Martha

**Enunciado:**  
Se evalúa la edad de una persona para decidir si puede entrar a la fiesta de Martha bajo las siguientes condiciones:

- Más de 15 años: solo entra con regalo
- Exactamente 15 años: entra gratis
- Menos de 15 años: no puede entrar

**Algoritmo en pseudocódigo:**

```text
Inicio
  Escribir "Ingrese la edad de la persona:"
  Leer edad

  Si edad > 15 Entonces
    Escribir "Solo puede entrar si trae regalo "
  Sino Si edad = 15 Entonces
    Escribir "Puede entrar totalmente gratis "
  Sino
    Escribir "No puede entrar a la fiesta "
  FinSi
Fin
```
