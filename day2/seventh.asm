;write an assemply program to mul two numbers and display the result.

.model small
.stack 100h
.data


n db 2
m db 3

.code

start:
mov ax,@data
mov ds,ax  



mov al,n ;a1=3
mul m ;a1=2*3=6
mov dl,al
add dl,48  ;d1=6+48=54   


mov ah,02h      
int 21h

mov ax,4c00h
int 21h


end start
