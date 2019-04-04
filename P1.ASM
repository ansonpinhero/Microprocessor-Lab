.model small
.stack
.data
  msg1 db 'hello anson pinhero$'
  msg2 db 10,13,'hello arjun ghosh$'
.code
  start:
  mov ax,@data
  mov ds,ax
  mov dx,offset msg1
  mov ah,09h
  int 21h
  mov dx,offset msg2
  mov ah,09h
  int 21h
  mov ah,4ch
  int 21h
end start
end
