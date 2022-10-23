## Assembly 8086 File Layout

```asm
.model small
.stack 100h

.data
  ;
.code

start:
  ; instructions
end start
```

## Compiling, Linking and Executing

```
edit <filename>.asm
tasm /l /zi <filename>.asm
tlink /v <filename>.obj
<filename>.exe
```
