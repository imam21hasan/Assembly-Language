.model small
.stack 100h
.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh
    jg L1          ; greater than
    
    jmp L2
    
    
    L1:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    L2:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main