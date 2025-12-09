.model small
.stack 100h
.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov cl,'1'   ; i=1
    
    for:
    cmp cl,bl
    jg exit:     ;i<=n
    
    mov ah,2     ; ascending order
    mov dl,cl
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    inc cl    
    jmp for:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main