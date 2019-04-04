.model small
display macro msg
  mov dx,offset msg
  mov ah,09h
  int 21h
endm
.stack
.data
  
  msg1 db 10,13, "Enter the string >>$"
  msg2 db 10,13,"palindrome$"	
  msg3 db 10,13,"not palindrome$"
  table db 50 dup(0)
  table1 db 50 dup(0)
.code
  start:
  mov ax,@data
  mov ds,ax
  display msg1
  mov bl,00h
  lea  si,table
  readloop:
	    mov ah,01h
	    int 21h
            mov [si],al
	    inc si
	    inc bl
            cmp al,0dh          
            jne readloop
 	    
  mov cl,bl
  mov al,bl
  dec si
  lea di,table1
  revloop:
	    mov al,[si]
            mov [di],al
	    inc di
	    dec si
	    dec cl
            jnz revloop
  lea  si,table
  lea di,table1

  palloop: 
	    mov al,[si]
	    cmp al,[di]
            
            je palloop
  palindrome : display msg2
  notpalindrome : display msg3
  cmp al,cl
  je palindrome
  cmp al,cl
  jne notpalindrome            
  mov ah,4ch
  int 21h
end start
end
