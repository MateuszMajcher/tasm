znak SEGMENT
ASSUME cs:znak
org 0100h

Start:
mov ah,02h
mov dl,'o'
int 21h

mov ah,08h
int 21h

mov ah,4ch
int 21h

znak ENDS
END Start
