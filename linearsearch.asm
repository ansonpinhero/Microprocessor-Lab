.model small
display macro msg
  mov dx,offset msg
  mov ah,09h
  int 21h
endm
.stack
.data
  
  msg1 db 10,13, "Enter n >>$"
  msg3 db 10,13, "Enter the numbers >>$"
  msg4 db 10,13, "Enter the element to search >>$"	
  msg2 db 10,13,"Element found >>$"
  msg5 db 10,13,"Element not found >>$"
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
  display msg4
  mov ah,01h
  int 21h
  mov cl,al
  
  
  checkloop:
	    mov al,[si]
            cmp al,cl
            je found            
            inc si
            dec bl
            jnz checkloop
	    display msg5
  found:
	    display msg2	          
  mov ah,4ch
  int 21h
end start
end
