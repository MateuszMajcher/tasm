maluj SEGMENT ;/tworzymy nowy segment
assume cs:maluj ; okrelsamy go jako segment kodu cs:ip
mov ax,0000h
mov ds,ax        ;do ds nie peposrednio przesylamy wartiosc ax
mov ax,0b800h7
mov es,ax

mov si,0000h  ;adres offsetu skad kopiujemy ds:si
mov di,1*160D ;adres dokad kopiujemy  es:di
mov cx,9*80d  ;240 znakow

cld ;kopiowanie wprzód
rep movsw  ;powtarzaj rozkaz movsw az cx=0
mov ah,4ch  ;funkcja wyjscia z progarmu
int 21h    ;dos

maluj ENDS
END


;z obszaru ds:si kpiojumy 240 znakow do es:di obaszr vga