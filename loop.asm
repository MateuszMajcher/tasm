Model Small
.Code 
Org 100H

Start:
MOV CX,200

JMP SHORT PETLA
mov ah,4ch
int 21h



PETLA:
mov al,'O'
int 29h
LOOP PETLA





END Start