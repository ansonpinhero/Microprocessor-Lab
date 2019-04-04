.model small
display macro msg
  mov dx,offset msg
  mov ah,09h
  int 21h
endm
.stack
.data
  
  msg1 db 10,13, "Enter n >>$"
  msg3 db 10,13,"Enter the numbers$"	
  msg2 db 10,13,"entered numbers are >>$"
table db 50 dup(0)
.code
  start:
  mov ax,@data
  mov ds,ax
  display msg1
  mov ah,01h
  int 21h
  mov cl,al
  sub cl,30h
  mov bl,cl
  lea si,table
  display msg3
  readloop:
	    mov ah,01h
	    int 21h
            mov [si],al
	    inc si
            dec cl           
            jnz readloop
  lea si,table
  display msg2
  displayloop:
	    mov dl,[si]
            mov ah,02h
            int 21h
            inc si
            dec bl
            jnz displayloop
            
  mov ah,4ch
  int 21h
end start
end
