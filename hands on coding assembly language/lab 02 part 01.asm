.model small
.stack 100h 
.data
a db 'hey there !$'
.code
main proc 
 mov ah,06h
 mov dx,'A'
 int 21h
   
   
   ret



