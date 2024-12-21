org 100h

.model small
.data
.code
main proc   
    
        mov ah,10001010b
        mov bh,11010111b
        
        AND ah,bh
        
     
        mov dl,ah  
        
        
        sub dl,81
        mov ah,02
        int 21h
        
        add dl,2 
        mov ah,02
        int 21h 
        
        sub dl,3 
        mov ah,02
        int 21h 
         
        
        
        main endp

ret




