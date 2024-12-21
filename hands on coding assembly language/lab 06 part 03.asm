.model small
.stack 100h
.data
.code
main proc
   
       mov cx,26
    mov dx,65
    
    L1:
    
    mov ah,2
    int 21h
    
    inc dx
    
    Loop L1  
    
    
  
    
    mov cx,26
    mov dx,90
    
    L2:
    
    mov ah,2
    int 21h
    
    dec dx
    
    Loop L2
    mov ah,4ch
    int 21h
    
    main endp
end main

ret



