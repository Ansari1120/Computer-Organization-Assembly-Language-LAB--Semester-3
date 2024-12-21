.model small
.stack 100h
.data
A db 'enter the String : $'
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov dl,al
    mov ah,2
    int 21h 
    
     mov ah,1
    int 21h
    mov dl,al
    mov ah,2
    int 21h
    
     mov ah,1
    int 21h
    mov dl,al
    mov ah,2
    int 21h
    
     mov ah,1
    int 21h
    mov dl,al
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main




