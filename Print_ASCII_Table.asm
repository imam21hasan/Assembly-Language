.model small
.stack 100h
.code
main proc
    mov cx,256  ; 256 character
    
    mov ah,2
    mov dl,0    ; started with zero
    
    Loop:
        int 21h
        
        inc dl      ; increment dl
        dec cx      ; decrement cx
        jnz Loop    ; Not Zero
        
    exit:
    mov ah,4ch
    int 21h
    main endp
end main