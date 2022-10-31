# DEBUG.EXE

La interfaz de línea de comandos (CLI), `debug` se utiliza para inspeccionar la
memoria y los registros del sistema.

## Índice de Comandos

- [Cambiar Dirección `-a`](#cambiar-dirección)
  - [Escribiendo Assembler](#escribiendo-assembler)
- [Calculo Suma/Resta de Números Hexa `-h`](#calcular-suma-y-resta-de-2-números-hexadecimales)

Para inicializarla se debe ejecutar la aplicación `debug`, la aplicación
funciona mediante comandos, se puede utilizar el comando _help_ escribiendo
<kbd>?</kbd> seguido de <kbd>Enter</kbd>.

<div style="padding: 1rem">
  <img src="images/debug_help.png" />
</div>

> Para cada comando se debe de ingresar la opción seguida de `Enter`.

> Para cerrar la aplicación se ingresa la opción `q` seguida de `Enter`

## Cambiar Dirección

```
-a [address]
```

El comando `a` se utiliza para cambiar la dirección a la que se quiere apuntar
el `debug`.

Se debe escribir `a` seguido de la dirección en memoria al que se quiere
inspeccionar.

```
-a 100
```

### Escribiendo Assembler

Se pueden escribir instrucciones en assembler cuando se ejecuta el comando
`address` (`a`).

```assembly
-a 100
073F:0100 mov dx, 0000              ;; asigna 0 al registro DX
073F:0103 mov ah, 09                ;; establece justo a la siguiente instrucción 
073F:0105 int 21                    ;; que se escribira un mensaje en la pantalla
073F:0107 mov ax, 4c00              ;; finaliza el programa con codigo 0
073F:010A int 21                    ;; escribe un string a la salida standard (stdout)
073F:010C                           ;; finaliza sin ingresar mas instrucciones y presionando enter
-e 010C "Hello World!" 0d 0a "$"    ;; ingresa el string "Hello World!" en el espacio de memoria 010C
-a 100
073F:0100 mov dx, 10c0              ;; mueve el dato en `010C` a el registro `dx`
073F:0103
-d 100                              ;; dump, muestra los contenidos en memoria para la dirección 100
```

> `0d` y `0a` son equivalentes a carriage return y line feed en assembly

> `"$"` determina que el string ha finalizado

<div style="padding: 1rem">
  <img src="images/debug_hello_world.png" />
</div>

## Calcular Suma y Resta de 2 números hexadecimales

El comando `h` recibe como argumentos 2 números hexadecimales y calcula
la suma y la resta entre ambos numeros. Posteriormente los devuevele el
el orden, suma a la izquierda y resta a la derecha.

```
-h 123 100
0223 0023
```
