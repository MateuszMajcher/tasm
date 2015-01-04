Title d2.asm
ASSUME cs:kod,ds:dane
GLOBAL Wynik:BYTE,Dodaj:FAR,LICZBA:BYTE


dane SEGMENT
Wynik DB ?
dane ENDS

kod SEGMENT

Dodaj PROC Far
mov ah,[liczba]
add ah,6
mov [wynik],ah
ret
Dodaj ENDP
kod ends
END