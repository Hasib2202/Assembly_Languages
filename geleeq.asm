.model small
.stack 100h
.data
m1 db "enter a number : $"
m2 db 10,13,"less than 5 $"
m3 db 10,13,"greater than 5 $"
m4 db 10,13,"equal to 5 $"
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
    
    cmp bl,'5'
    jg greater
    jl less
    je equal
    
greater:
    mov ah,9
    lea dx,m3
    int 21h
    jmp end
less:
    mov ah,9
    lea dx,m2
    int 21h
    jmp end
equal:
    mov ah,9
    lea dx,m4
    int 21h
    jmp end
end:
    mov ah,4ch
    int 21h    
    
    main endp
end main