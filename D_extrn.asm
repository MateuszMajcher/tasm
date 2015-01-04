Title D_extrn.asm
.model small

extrn Wstaw_liczbe: proc

.code
Start:
call Wstaw_liczbe
mov ax,4c00h
int 21h
end Start