Title napis.asm
model small
.stack 100h  ;segment stosu o wielkosci 100h
.data

napis db 'programujemy w asemler',13,10,'$'
.code
Start:
mov ax,@data ;@data wskazuje na domysnly segment danych
mov ds,ax
mov ah,9
mov dx,offset napis
int 21h
mov ah,08h
int 21h

mov ax,4c00h
int 21h  ;wywolanie dos
end Start