.model small
.stack 100h
.data
msg1 db "i want to show the "?" question mark : $"
msg2 db 10,13,"output is : $"
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    mov ah,4ch
    int 21h
    
    
    main endp
end main