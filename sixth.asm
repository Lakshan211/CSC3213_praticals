;write an assemply program to sub two numbers and display the result.

.model small
.stack 100h
.data


n db 7
m db 3

.code

start:
mov ax,@data
mov ds,ax  ;data secment register



mov dl,n ;d1=7
sub dl,m ;d1=7-3=4
add dl,48  ;d1=4+48=53   convert to ASCII


mov ah,02h      ;int:-02h,string :-09h
int 21h

mov ax,4c00h
int 21h


end start
