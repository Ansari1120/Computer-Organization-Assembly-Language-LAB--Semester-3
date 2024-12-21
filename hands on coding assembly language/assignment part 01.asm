.model small 
.stack 100h
.data

string1 db 0AH,0DH, 'alphabets in Acending order were : $'
string2 db 0AH,0DH, 'alphabets in Decending Order were :$'
.code 
main proc 
         mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,string1
    int 21h  
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
  mov cx,26
  mov dx,65
  
  L1:
  mov ah,2
  int 21h
  
  inc dx
  
  Loop L1  
  mov ax,@data
  mov ds,ax
        mov dx,offset string2
        mov ah,09h
        int 21h
                   mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
          
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


        int 21h
        mov ah,4ch
        int 21h 
          
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






