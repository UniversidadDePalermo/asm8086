# Assembly en DOSBox

## Hello World

```asm
.model small
.stack 100h

.data
  message db "Hello World!", 13, 10, "$"
.code

start:
  mov ax, @data
  mov ds, ax
  mov ah, 9
  mov dx, offset message
  int 21h
  mov ah, 4ch
  int 21h
  end
end start
```

## Recursos

- [Ralf Brown's Interrupt List
Indexed HTML Version - Release 61](https://www.ctyme.com/rbrown.htm)
