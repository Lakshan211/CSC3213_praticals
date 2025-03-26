;write an assemply program to div two numbers and display the result.

.model small
.stack 100h
.data


n db 9
m db 3
r db ?
.code

start:

mov ax,@data
mov ds,ax  


mov ah,00 
mov al,n ;a1=9
div m ;a1=9/3=3,  ah=0
mov r,ah

mov dl,al;dl=3
add dl,48  
mov ah,02h      
int 21h

mov dl,10  
mov ah,02h      
int 21h

mov dl,r;dl=0
add dl,48  ;d1=0+48=48
  
mov ah,02h      
int 21h



mov ax,4c00h
int 21h


end start
