.model small
.stack
.data
	num1 dw 0101h
	num2 dw 0010h
	ans dq ?
.code 
start :
	mov ax,@data
	mov ds,ax
	mov ax,num1
	mov bx,num2
	mul bx		
	
	mov word ptr ans,ax
	mov word ptr ans+2,ax
	mov ah,4ch
	int 21h
end start
end