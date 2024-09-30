.model small
.stack 100h
.data
msg1 db "Enter 1st number: $"
msg2 db 10,13,"Enter 2nd number: $"
msg3 db 10,13,"Enter 3rd number: $"
msg4 db 10,13,"Result is : $"
a db ?
b db ?
c db ?
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h
    mov a,al
    
    mov ah, 9
    lea dx, msg2
    int 21h 
    
    mov ah, 1
    int 21h
    mov bl,al
    
    add a,bl
    mov bl,a 
    sub bl,30h
    
    mov ah, 9
    lea dx, msg3
    int 21h
    
    
    mov ah, 1
    int 21h
    mov c,al
    
    add c,bl
    sub c,30h
    
    mov ah, 9
    lea dx, msg4
    int 21h 
    
    mov ah, 2 
    mov dl,c
    int 21h 
    
     
    main endp
end main
