.model small
display macro msg
  mov dx,offset msg
  mov ah,09h
  int 21h
endm
.stack
.data
  msg1 db 'hello anson pinhero$'
  msg2 db 10,13,'hello arjun ghosh$'
.code
  start:
  mov ax,@data
  mov ds,ax
  display msg1
  display msg2
  mov ah,4ch
  int 21h
end start
end
