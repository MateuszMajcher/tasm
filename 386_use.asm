Title 386_use.asm
.386 ;dyrektywa umozliwia stosowanie nieuprzywilejowanych rozkazów
Dane Segment USE32 ;use32 oznacza ze segment bedzie 321 bitowy
assume ds:Dane
Wielkosc DB 'przestrzen  4-gigabajtowa$'; segment 4gigabajtowy4
Dane ends


Rozmiar segment use16 ;segment 16 bitowy
assume cs:Rozmiar

Start:
mov ax,Dane
mov ds,ax

mov ah,09h
mov edx,offset Rozmiar;
int 21h

mov ah,08h
int 21h   ;klawisz enter

mov ax,4c00h
int 21h

Rozmiar ends
end start