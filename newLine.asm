.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    ;New Line
    mov ah,02h
    mov dl,0ah     ; 0ah(Hex) =1 0
    int 21h
    mov dl,13      ; 13(dec) = 0dh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main