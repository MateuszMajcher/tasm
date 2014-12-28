Title napis2.asm
model small

.data
.code
org 0100h
Start:
mov ah,9
mov dx,offset napis
int 21h
mov ah,08h
int 21h
mov ax,4c00h
int 21h

Napis db 'progarmujemey',13,10,'$'
end Start