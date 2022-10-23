# Registros

## Registros Divididos en 2 Partes (High/Low)

Cada registro en la Intel 8086 tiene una capacidad
de 16 bits. De los cuales 4 registros: AX,
BX, CX y DX, estan internamente divididos a la mitad.

Nombre | Estructura | Descripción
--- | --- | ---
**AX** | **AH** - **AL** | Registro Acumulador
**BX** | **BH** - **BL** | Registro Base
**CX** | **CH** - **CL** | Registro Contador
**DX** | **DH** - **DL** | Registro de Datos

## Registros no Divididos en 2 Partes

Nombre | Descripción
--- | ---
**SI** | Source Index / Índice Fuente
**DI** | Destination Index / Índice Destino
**BP** | Base Pointer / Puntero Base
**SP** | Stack Pointer / Puntero Stack

## Registros de Segmento

Los registro de segmento se usan para consumir
bloques de memoria.

Nombre | Descripción
--- | ---
**CS** | "Code Segment", Apunta al segmento que contiene el programa actual
**DS** | "Data Segment", Apunta al segmento donde las variables se encuentran definidas
**ES** | "Extra Segment", habilitado para el uso del programador
**SS** | "Stack Segment", Apunta al segmento contenido en el Stack

## Registros Bandera

Los registros bandera son modificados por el CPU y
nos ayudan a determinar la naturaleza del resultado
de una operación aritmética llevada a cabo en la ALU.

### Auxiliary Carry Flag ● `AF`

TBD

### Carry Flag ● `CF`

Determina la presencia de _Carry_ (Llevar) en el HO (High Order) bit.

<div style="display: flex">

Valor | Descripcion
--- | ---
`0`/`NC` | No hay carry
`1`/`CY` | Hay carry

</div>

### Direction Flag ● `DF`

TBD

### Interrupt Flag ● `IF`

Determina el comportamiento del procesador con respecto a las interrupciones del hardware

<div style="display: flex">

Valor | Descripcion
--- | ---
`0` | Ignora instrucciones que interrumpen el Hardware
`1` | Procesa instrucciones que interrumpen el Hardware

</div>

### Overflow Flag ● `OF`

Índica la presencia de desboardamiento en el
resultado de una operación aritmética.

Ocurre si el resultado de una operación no puede
ser representado en una cantidad determinada de
bits.

<div style="display: flex">

Valor | Descripcion
--- | ---
`0` | No hay desbordamiento
`1` | Hay desbordamiento

</div>

### Sign Flag ● `SF`

Determina el signo de un resultado aritmético

<div style="display: flex">

Valor | Descripcion
--- | ---
`0`/`PL` | Signo Positivo
`1`/`NG` | Signo Negativo

</div>

### Trap Flag ● `TF`

TBD

### Zero Flag ● `ZF`

TBD
