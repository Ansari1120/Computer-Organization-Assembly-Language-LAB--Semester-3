.model small
.data       
pwd db 'YOURNAME'
A db 10,13,'Correct Password',10,13,'$'
B db 10,13,'Incorrect Password',10,13,'$' 
.code
main proc :
    mov ax,@data
    mov ds,ax  
    mov bx,offset pwd
 
 mov cx,8
 x:
 mov ah,8
 int 21h
 push ax
 push [bx]  
 inc bx
 mov ah,2
 mov dl,'w'
 int 21h
 loop x
 mov cx,8
 y:
 pop ax
 pop bx
 cmp al,bl
 jne error
 loop y
 mov ah,9
 mov dx,offset A
 int 21h
 exit : 
 mov ah,4ch
 int 21h
 error : 
 mov ah,9
 mov dx,offset B
 int 21h
 jmp exit
 end main
 




