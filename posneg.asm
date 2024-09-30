.model small
.stack 100h
.data
m1 db 10,13,"positive $"
m2 db 10,13,"negative $"
m3 db "enter a number: $"


.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m3
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    cmp bl,'0'
    jge pos
    jl nega 
    
    
pos:
    mov ah,9
    lea dx,m1
    int 21h
   
    jmp end
    
nega:
    mov ah,1
    int 21h
    
    mov ah,9
    lea dx,m2
    int 21h
    jmp end
     
end:
    mov ah,4ch
    int 21h    
    
    main endp
end main