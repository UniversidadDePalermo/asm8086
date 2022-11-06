# Instrucciónes

Las instrucciones en Assembly son los _building blocks_ para los programas que
escribimos.

## `MOV <REG>, <VAL>`

Asigna el valor `<VAL>` al registro `<REG>`

```asm
MOV AH, 10
MOV AL, -5
MOV AX, 4C00
```

## `ADD <REG>, <VAL>`

Suma el valor en `<VAL>` a el contenido en `<REG>`. Si vamos a sumar por
primera vez, es recomendable asegurarse el valor en `<REG>` colocando `0` antes.

```asm
MOV AH, 0
ADD AH, 10
```

## `SUB <REG>, <VAL>`

Resta o substrae, el valor `<VAL>` a el contenido en el registro `<REG>`.

```asm
SUB AH, 10
SUB AL, -5
```

