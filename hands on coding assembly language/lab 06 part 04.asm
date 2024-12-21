.model small
.stack 100h
.data
.code
main proc
   
       mov cx,5
    mov dx,48
    
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
    
    mov cx,4
    mov dx,48
    
    L2:
    
    mov ah,2
    int 21h
    
    inc dx
    
    Loop  L2
    
   
    
   mov dl,10
    mov ah,2
   
    int 21h
     mov dl,13
    mov ah,2
    int 21h
    
    mov cx,3
    mov dx,48
    
    L3:
    
    mov ah,2
    int 21h
    
    inc dx
    
    Loop  L3
    
     mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
       
      mov cx,2
    mov dx,48
    
    L4:
    
    mov ah,2
    int 21h
    
    inc dx
    
    Loop  L4  
     mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov cx,1
    mov dx,48
    
    L5:
    
    mov ah,2
    int 21h
    
    inc dx
    
    Loop  L5
    
    mov ah,4ch
    int 21h 
      
   
     
               
  
    
          
        
      
    main endp
end main
ret



