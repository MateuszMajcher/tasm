;program wysiwetla napis skok
Model Small  ;dyr okresla model pamieci
.Code   ;dyr oznacza poczatek degmentu danych
ORG 100H
START:     ;etykieta
call beep       ; wywolanie procedury beep
jmp short x1  ;skok do wtykiety x1

x2:
call litera
mov al,'O'
int 29h
call litera
mov al,'I'
int 29h

call beep
jmp short koniec

x1:
mov ah,02H
mov dl,'S'
int 21H

jmp short x2

koniec:  ;wyjscie do systemu oeracyjnego
mov ah,4ch
int 21h

litera PROC
mov al,'K'
int 29h
RET
litera ENDP

beep PROC   ;procedura generujaca dzwiek
mov ah,02h
mov dl,7
int 21h
RET
beep ENDP

end START

