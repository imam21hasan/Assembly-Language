;Enter three input and print

.model small
.stack 100h

.data
a db "Enter three initials : $"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,09h      ;Enter three initials
    lea dx,a
    int 21h
    
    mov ah,01h      ;User Input-1
    int 21h
    mov bl,al
    
    mov ah,02h      ;Tab
    mov dl,9
    int 21h
    
    mov ah,01h      ;User Input-2
    int 21h
    mov bh,al
    
    mov ah,02h      ;Tab
    mov dl,9
    int 21h
    
    mov ah,01h      ;User Input-3
    int 21h
    mov cl,al
    
    mov ah,02h      ;New Line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,02h      ;1st input result
    mov dl,bl
    int 21h
    
    mov ah,02h      ;New Line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,02h      ;2nd result
    mov dl,bh
    int 21h
    
    mov ah,02h      ;New Line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,02h      ;3rd result
    mov dl,cl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main