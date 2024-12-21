.model small
.stack 100h
.data

A db 'enter the String : $'

MESSAGE	DB	0AH, 0DH,"your input were : $"

.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,a
    int 21h 
      mov ah,1
      int 21h
        mov ah,1
      int 21h    
        mov ah,1
      int 21h
        mov ah,1
      int 21h       

     mov ax,@data
     mov ds,ax 
     MOV DX, OFFSET MESSAGE
     mov ah,9
     int 21h
             
mov dl, al                                    
add dl,96
sub dl,96   
add dl,86
mov ah, 02h
int 21h
mov dl, al
mov ah, 02h
int 21h    
mov dl, al
mov ah, 02h
int 21h 
mov dl, al
mov ah, 02h
int 21h 
         
      mov ah,4ch
      int 21h
      
      main endp
end main


