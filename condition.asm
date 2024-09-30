.model small
.stack 100h
.data
m1 db "hello world $"
m2 db "bye $"
newline db 10,13,"$"
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov bl,5
    
label:    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,9
    lea dx,newline
    int 21h
    

    dec bl
    cmp bl,0
    jne label
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,m2
    int 21h
    
    main endp
end main