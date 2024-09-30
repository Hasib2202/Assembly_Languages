.model small
.stack 100h
.data
m1 db "upper: $"
m2 db "lower: $"
newline db 10,13, "$"
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    cmp bl,'A'
    jb lower
    cmp bl,'Z'
    ja lower
    add bl,20h
    
    mov ah,9
    lea dx,newline 
    int 21h
    
lower:
    mov ah,9
    lea dx,m2
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    mov ah,4ch
    int 21h

    
    main endp
end main