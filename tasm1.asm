maluj SEGMENT
ASSUME cs:maluj
mov ax, 0000h
mov ds, ax
mov ax, 0b800h
mov es, ax


mov si, 0000h
mov di,1*160d
mov cx, 3*80d
cld
rep movsw
mov ah, 4ch
int 21h
maluj ENDS
end