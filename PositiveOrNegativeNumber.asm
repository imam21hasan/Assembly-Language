.model small
.stack 100h
.data
a db "The number is Positive$"
b db "The number is Negative$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov bx,5
    
    cmp bx,0
    jge L1
    jmp L2
    
    L1:
    mov ah,9
    lea dx,a
    int 21h
    jmp exit:
    
    L2:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main