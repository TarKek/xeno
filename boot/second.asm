format binary as "sec"

org 7E00h
start:
use16

jmp second_entry

nop

include "second.inc"

second_entry:

cls

mov ah, 02h
mov al, 08h
mov cx, 0012h
mov bx, 8100h
movs es, 0000h
int 13h

jc err0

mov sp, 810h
movs ds, 8100h
jmp 0000:8100h

err0:

cls
MOV AH, 06h
XOR AL, AL
XOR CX, CX
MOV DX, 184Fh
MOV BH, 17h
INT 10h

printsz bsod0

jmp endall

endall:

cli
hlt
jmp $-2


msg0 db "xeno Loader(second stage) by Andrew. 2024", newline
db "Loading HAT16 filetable...", newline, 00h

bsod0:
db newline
db newline
db "Oops! There's a problem with OS", newline
db "At position: 00007E32h", newline
db "The most common error is a broken disk.", newline
db newline
db "0000000Dh - CANNOT_LOAD_KERNEL", newline, 00h

times 200h*16-1+start-$ db 00h

db EOF
