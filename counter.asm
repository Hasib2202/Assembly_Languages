.model small
.stack 100h
.data 
msg1 db "Enter a character: $"
a db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl,al
    
    
    mov cx,50
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    start:
    mov ah,2
    mov dl,bl
    int 21h
    dec cx
    jnz start
    jmp end
    
    end:
    mov ah,4ch
    int 21h
    

    main endp
end main