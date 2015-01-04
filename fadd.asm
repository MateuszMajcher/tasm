;program dodaje do siebie dwie lizby rzeczywiste i umiescze je na stosie
Title fadd.asm
kopro segment 'code'  ;segment kjopro
assume cs:kopro,ds:dane
;;;

dane segment   ;segment danych
Pocz_danych DB 'start'
a dd 3.8
b dd 5.3
Koniec_danych DB 'stop'
dane ENDS  ;koniec segm danych


ORG 100h
Start:
mov ax,dane
mov ds,ax
fld a
fld b
fadd ST(1),ST
;;;
mov ax,4c00h
int 21h
kopro ENDS
end start