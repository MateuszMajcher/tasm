title _cpuid.asm
.386 
_cpuid segment use16 ;dyrektywa umozliwia stosowanie 64 kb segm.
assume cs:_cpuid,ds:Dane

Org 0100h
Start:
Dane segment
Jest DB 'jest sse$'
Brak DB 'brak sse$'
Dane ends

mov ax,dane
mov ds,ax

mov eax,1
dw 0A20fh ;opcode spuid = 0fa2h

test edx,00000010000000000000000000000b ;dla sse na 25 miejscu jest 1
jnz SSE_jest;rozkaz test dziala podobnie jak and
mov ah,09h; wyswietla napis ze brak
mov edx,offset Brak;
int 21h
jmp koniec

SSE_jest:
mov ah,09h ; napis na ekranie ze jest
mov edx,offset Jest
int 21h

Koniec:
mov ah,08h
int 21h  ;klawisz enter

mov ax,4c00h
int 21h

_cpuid ends
end Start
