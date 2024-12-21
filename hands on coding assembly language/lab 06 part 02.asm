.model small
.stack 100h
.data
.code
main proc
   
       mov cx,255
    mov dx,00
    
    L1:
    
    mov ah,2
    int 21h
    
    inc dx
    
    Loop L1 
    
    mov dl,10
    mov ah,2
    int 21h
    
   
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov cx,255
    mov dx,00
    
    L2:
    
    mov ah,2
    int 21h
    
    dec dx
    
    Loop  L2
    
    mov ah,4ch
    int 21h
    
 
      
    main endp
end main
ret

ret


