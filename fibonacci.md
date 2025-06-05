
# 🔢 Cálculo del número de Fibonacci en Common Lisp

Este código define una función recursiva para calcular el término `n` de la serie de Fibonacci e imprime el resultado usando un valor definido en un bloque `let`.

---

## 📄 Código Lisp

```lisp
;; Cálculo del número de Fibonacci de un valor `n`.

;; Función recursiva que calcula el término `n` de la serie de Fibonacci.
(defun fibonacci (n)
  ;; Caso base: Si `n` es 0, retorna 0.
  (if (= n 0) 
      0
      ;; Caso base: Si `n` es 1, retorna 1.
      (if (= n 1)
          1
          ;; Si `n` es mayor a 1, se calcula recursivamente sumando los dos términos anteriores.
          (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

;; Bloque LET para definir `n` y calcular su valor en la serie de Fibonacci.
(let ((n 5))  ;; Defino el valor de `n`, aquí se puede cambiar para probar otros términos.
  ;; Imprimo el resultado en pantalla.
  (format t "Fibonacci de ~A es: ~A~%" n (fibonacci n)))
```
