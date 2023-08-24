# Práctico 2 - Electrónica II 2022 para ingeniería electrónica - Codificador complemento a dos

En este práctico debes completar un componente que genera la representación en complemento a dos de un número dado con su signo. Si el número es mayor que el máximo representable debe generar el código correspondiente al máximo. Si el número es menor que el mínimo representable debe generar el código correspondiente al mínimo.

Prerequisitos: 
- Haber completado el práctico 1 (código de gray)

Instrucciones:

- Para clonar el repositorio, en Visual Studio Code presiona _Ctrl+Mayus+P_, escribe `git:clone`, presiona enter. Pega en el cuadro la dirección dada a continuación y presiona enter.
```
https://github.com/fmirandabonomi/electronica_ii-complemento_a_dos.git
```

- Para ejecutar el banco de pruebas en Visual Studio Code abre una consola con _Ctrl+ñ_ e introduce el siguiente comando
```
  make
```

- Para eliminar los archivos generados por el simulador usa el comando `make clean`

La implementación que debes completar se encuentra en `design.vhd`

El ejercicio está completo cuando pasan todas las pruebas, resultado `[PASS]`.

Consejo: Revisa la teoría de complemento a dos antes de comenzar. Prueba en papel con menos bits. Considera los mensajes de error cuando el resultado es `[FAIL]`.
