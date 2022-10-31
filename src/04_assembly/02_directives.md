# Directivas (Directives)

Las directivas permiten definir el comportamiento
del programa con respecto a los segmentos de memoria
usados, el tamaño del stack, valores estáticos y
la sección de instrucciones a ejecutar.

## `.model`

La directiva `.model` define el comportamiento de ciertos registros para tu
programa.

### `.model tiny`

Define que los registros `CS`, `DS` y `SS` apuntaran al mismo segmento de
memoria de 64KB. El stack es colocado en la región mas alta de dicho segmento.

### `.model small`

Define que el registro `CS` de tu programa apuntara a su propio segmento, seguido del segmento donde `DS` y `SS` estan apuntando. El stack se posicionará en la región mas alta del segmento `SS`.

## `.stack`

TBD
