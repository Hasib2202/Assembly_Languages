.model small
.stack 100h
.data
msg1 db "Hello World $"
newline db 10,13,"$" 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
print:
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,9
    lea dx,newline
    int 21h
    
    jmp print
    
    
    
    main endp
end main