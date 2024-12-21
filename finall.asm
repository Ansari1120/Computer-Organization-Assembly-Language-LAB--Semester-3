org 100h
.model small
.data  

F db '                *   * ****  *    ****  **** *   *  ****                                 $'
G db '        * * * **    *    *     *  * * * *  **                              $'
H db '             * * * ****  **** ****  **** *   *  ****                             $'
D db '                            PROJECT: CHARACTER COUNT$'
A db 10,13, 'Enter Characters(Alphabets or Numbers) : $'
C db 10,13, 'your number of characters are : $'
E db '              Enter First  Capital letter of your name to Count$'
.code

main proc


mov dx,offset F
mov ah,09h
int 21h
       


mov dx,offset G
mov ah,09h
int 21h
       

mov dx,offset H
mov ah,09h
int 21h
       
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h



mov dx,offset D
mov ah,09h
int 21h
       
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h


mov dx,offset E
mov ah,09h
int 21h

mov dx,10
mov ah,2
int 21h 

lea dx,A
mov ah,09h
int 21h


mov bl,00 ;counting starts from ascii 00

k:
mov ah,01
int 21h
inc bl      
cmp al,4dh 
je b

loop k


b:

mov dx, offset C
mov ah,09h
int 21h

mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h

mov dl,bl

mov ah,02h
int 21h

mov ah,4ch
int 21h



ret



