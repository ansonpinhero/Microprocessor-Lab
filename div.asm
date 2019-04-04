.model small
.stack
.data
  num1 dw 4444h
  num2 dw 0002h
  res dq ?
.code
 start:
  mov ax,@data
  mov ds,ax
  mov ax,num1
  mov bx,num2
  div bx
  mov word ptr res,ax
  mov word ptr res+2,dx
  mov ah,4ch
  int 21h
 end start
end























