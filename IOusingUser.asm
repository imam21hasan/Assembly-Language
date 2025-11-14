;Enter a number : 5
;The number is : 5

.model small
.stack 100h

.data
a db "Enter a number : $"
b db "The number is : $"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,09h      ;Enter a number :
    lea dx,a
    int 21h
    
    mov ah,01h      ;User input
    int 21h
    mov bl,al
                    
    mov ah,02h      ;New Line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,09h      ;The number is :
    lea dx,b
    int 21h
    
    mov ah,02h      ;User input number
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main