Title msr.asm
.386
kod Segment USE32
assume cs:kod
Start:
mov eax,50d
mov ax,4c00h
int 21h
kod ends
end Start