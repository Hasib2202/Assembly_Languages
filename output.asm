.model small
.stack 100h
.data
msg1 db "Start $",0dh,0ah,"$"
msg2 db "the end $"
a db ?
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,2
    mov dl,'A'
    mov a,al
    int 21h
    
    cmp a,'0'
    jg l1
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    l1:
    mov bl,a
    inc bl
    mov dl,bl
    
    mov ah,2
    int 21h
    
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    exit:
    mov ah,9
    lea dx,msg2
    int 21h
    mov ah,4ch
    int 21h
     
    
    main endp
end main
