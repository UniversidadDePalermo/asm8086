.model small
.stack 100h

.code

start:
  mov ah, 8     ;; asigna 8 a ah
  add ah, 3     ;; suma 3 a el valor en ah y reasigna
  sub ah, 4     ;; substrae 4 a el valor en ah y reasigna
  mov ax, 4c00  ;; usa 4c para finalizar
  int 21h       ;; interrumpe
  end
end start
