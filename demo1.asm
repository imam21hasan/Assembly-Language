.model small
.stack 100h     ; 100h(Hex) = 256(decimal)
.code

main proc
    
    mov ah,01h  ; 01h = 1
    int 21h
    mov bl,al
    
    mov ah, 02h ; 02h = 2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main