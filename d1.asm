Title d1.asm
GLOBAL wynik:BYTE,Dodaj:FAR
;etykieta wynik jest typu byte
;etykieta dodaj jest typu dalekiego
;global gyrektywa do imp i eksp danej
PUBLIC Liczba,Wstaw_wynik
;etykieta liczba i procedura wstaw_wynik publiczna

ASSUME cs:kod,ds:dane

dane SEGMENT
Liczba DB 2
;liczba która zostanie wysłana 
dane ENDS

kod segment
 Start:
 
 Wstaw_wynik PROC
 mov ax,dane
 mov ds,ax
 call far ptr Dodaj ;dalekie wywołanie procedury dodAJ Z DS2
 mov bl,[wynik] ;nast pobranie wyniku z ds2
 ret
 Wstaw_wynik ENDP
 
 mov ah,4ch
 int 21h
 kod ENDS
 END Start
