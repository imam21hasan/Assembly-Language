.model small
.stack 100h
.code
main proc
    
    mov ah,1     ;1st input
    int 21h
    mov bl,al
    
    mov ah,2     ;space
    mov dl,32
    int 21h
    
    mov ah,1     ;2nd input
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov ah,1     ;3rd input
    int 21h
    mov cl,al
                 
    add bl,bh    ; bl=bl+bh
    sub bl,48
    
    add bl,cl    ; bl=bl+cl
    sub bl,48
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2     ;print result
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main