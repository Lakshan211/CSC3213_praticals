;write an assemply program to add two numbers and display the result 
;Number 01:2
;Number 02:3
;Addition of num1 and num2:5 

.model small
.stack 100h
.data
str1 db "Number 01:$"
str2 db "Number 02:$"
str3 db "The sum of 2 and 3 is:$"
n db 2
m db 3

.code

start:
mov ax,@data
mov ds,ax  



mov dl,n ;d1=2
add dl,m ;d1=2+3=5
add dl,48  ;d1=5+48=53  

mov ah,09h
mov dx,offset str1
int 21h

mov ah,09h
mov dx,offset str2
int 21h

mov ah,09h
mov dx,offset str3
int 21h

mov ah,02h     
int 21h

mov ax,4c00h
int 21h


end start
