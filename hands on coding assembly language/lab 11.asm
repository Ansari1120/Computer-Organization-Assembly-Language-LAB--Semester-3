

.model small
.stack 100h
.data 

arr1 db 1,2,3,4

.code

main proc 
    mov ax,@data
    mov ds,ax
    
   
    mov cx,4 
    mov si,offset arr1 
    mov dx,si 
    mov dx,[si] 
    add dx,48
    
    L1:
    
    mov ah,2
    int 21h
    
    inc dx
      
      
    
    loop L1  
       
    
  mov ah,4ch
  int 21h

ret




