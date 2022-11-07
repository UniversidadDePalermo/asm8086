# Instrucciónes

Las instrucciones en Assembly son los _building blocks_ para los programas que
escribimos.

## `MOV <REG>, <VAL>`

Asigna el valor `<VAL>` al registro `<REG>`

```asm
MOV AH, 10     ;; Coloca el valor 10 en el registro AH
MOV AL, -5     ;; Coloca el valor -5 en el registro AL
MOV AX, 4C00   ;; Coloca el valor 4C00 en el registro AX
MOV AH, 'A'    ;; Coloca el valor ASCII 'A' en el registro AH
```

> No se puede usar esta instrucción para modificar el valor de los registros
> `CS` ó `IP`.

### Tipos de Valor

Podemos usar valores binarios, hexadecimales, decimales y ASCII al
asignar valores usando `MOV`.

#### Binario

```
MOV AH, 1100_0011b
```

#### Hexadecimal

```
MOV AX, CAFEh
```

#### Decimal

```
MOV AH, -5
```

#### ASCII (American Standard Code for Information Interchange)

```
MOV AH, 'A'
```

> [Tabla de Códigos ASCII][ASCII_TABLE]

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

[ASCII_TABLE]: https://en.wikipedia.org/wiki/ASCII#Printable_characters
