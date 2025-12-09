.model small
.stack 100h
.data
a db ?
b db ?
c db ?
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48   ; convert Character to number
    mov a,al
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov b,al
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
 
    
    add al, a       ; al=al+a
    
    add al, b
    
    aam         ; if the result 2 digit
    
    mov bx,ax
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bh
    add dl,48   ; Convert number to character
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main