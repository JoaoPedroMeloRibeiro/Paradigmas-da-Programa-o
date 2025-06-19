(defun transformar (x)
  (if (>= x 4)
      (* x x)  ; Multiplica o elemento por ele mesmo se for maior ou igual a 4
      (/ x 2))) ; Divide por 2 se for menor que 4

;; Aplica a função nas duas listas
(let ((lista1 (mapcar #'transformar '(1 2 3)))
      (lista2 (mapcar #'transformar '(4 5 6))))
  (append lista1 lista2))
