.model small
.stack 100h
.data
msg1 db "enter a lowercase character: $"
msg2 db "converted into lower case : $"
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al 
    
    cmp bl,'a'
    jb upper
    
    cmp bl,'z'
    ja upper
    sub bl,20h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

upper:
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
   
    main endp
end main