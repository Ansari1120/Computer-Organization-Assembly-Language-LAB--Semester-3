
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

name "hi"

org 100h  

jmp start 

msg : db "1402-2020"

start: mov dx,msg 
       mov ah,09h
       int 21h
       
       mov ah,0
       int 16h

ret




