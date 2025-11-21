.model small
.stack 100h

.data
a db 5
b db ?

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,01h
    int 21h
    mov b,al
    
    mov ah,02h
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,02h
    mov dl,a
    add dl,48  ;convert number to ASCII(5-> 053-005)
    int 21h
    
    mov ah,02h
    mov dl,b
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main