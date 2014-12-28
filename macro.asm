Title macro.asm
piksel SEGMENT
ASSUME cs:piksel
Org 100h   ;deryktewa ps o 100
Start:

Generowanie_piksela MACRO Wsp_x,Wsp_y     ;definicja macro
mov ah,00h   ;set video mode
mov al,10h
int 10h

mov ah,0ch     ;narysuj piksel
mov al,04
mov bh,0
mov cx,Wsp_x
mov dx,Wsp_y
int 10h

mov ah,08h   ;Console input without echo  /21h dos
int 21h

mov ah,00h  ;powraca do domyslnego trybu graf
mov al,03h
int 10h
ENDM
;koniec makra

Generowanie_piksela 330d,175d  ;wywolanie piksela

mov ax,4c00h   ;Terminated with return code czyli wychodzi z programu
int 21h

piksel ENDS
END Start





