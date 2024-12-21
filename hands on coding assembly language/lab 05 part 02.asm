.model small
.stack 
.data
C db 'MULTIPLICATION : $'
D db 'DIVISION : $'
.code
    main proc  
 
            ;#Display FUNCTION NAME : 
        mov ax,@data 
    mov ds,ax
    mov dx,offset C
    mov ah,9
    int 21h 
    
        ; #MULTIPLICATION :
        
               mov al,5
    mov bl,10
    mul bl ;5*10 = 50 
    AAM   
    mov ch,ah ; 5
    mov cl,al ; 0
    
    mov dl,ch ;5 stored
    add dl,48 ; ASCII CONVERSION
    mov ah,2  ; OUTPUT ASCII CONVERTED VALUE
    int 21h
         
       mov dl,cl ;0 stored
    add dl,48 ; ASCII CONVERSION
    mov ah,2  ; OUTPUT ASCII CONVERTED VALUE
    int 21h   ;returning value
     
         ;#For Line Change
           
     mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h 
    
       ;#Display FUNCTION NAME : 
        mov ax,@data 
    mov ds,ax
    mov dx,offset D
    mov ah,9
    int 21h
             
   ; #DIVISION :
    
        mov ax,8
    mov bl,2
    div bl ;8/2 = 04 
    AAM   
    mov ch,ah ; 0
    mov cl,al ; 4
    
    mov dl,ch ;0 stored
    add dl,48 ; ASCII CONVERSION
    mov ah,2  ; OUTPUT ASCII CONVERTED VALUE
    int 21h
         
       mov dl,cl ;4 stored
    add dl,48 ; ASCII CONVERSION
    mov ah,2  ; OUTPUT ASCII CONVERTED VALUE
    int 21h   ;returning value 
    
    ;#For Line Change
           
     mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    
       mov ah,4ch
    int 21h

                 
endp
end main






