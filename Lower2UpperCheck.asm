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
    
    cmp bl,'a'
    jnge L2        ;not greater then or equal
    cmp bl,'z'
    jnle L2        ;not less than or equal
    
    jmp L1
    
                   
    L1:
    mov ah,2       ; Lower to Upper
    mov dl,bl
    sub dl,32
    int 21h
    jmp exit:
    
    L2:             ; always Upper letter
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main