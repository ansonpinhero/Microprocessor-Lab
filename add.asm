.model small
.stack
.data
	num1 dw 0101h
	num2 dw 0204h                         
	sum dw 0000h
.code 
start :
	mov ax,@data
	mov ds,ax
	mov ax,num1
	mov bx,num2
	add ax,bx		
	mov sum,ax
	mov ah,4ch
	int 21h
end start
end