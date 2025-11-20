;Swapping

.model small
.stack 100h
.code

main proc
    
    mov ah,01h     ;1st Input
    int 21h
    mov bl,al
    
    mov ah,02h     ;Tab
    mov dl,9
    int 21h
    
    mov ah,01h     ;2nd Input
    int 21h
    mov bh,al
    
    xchg bl,bh     ;Swap
    
    mov ah,02h     ;New Line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,02h     ;2nd input result
    mov dl,bl
    int 21h
    
    mov ah,02h      ;Tab
    mov dl,9
    int 21h
    
    mov ah,02h      ;1st input result
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main