format binary as "sec"

use16

org 7C00h

jmp boot_entry

nop

msg db "xeno Loader by Andrew. 2024", 0Dh, 0Ah, 0x00

log db "Booting up...", 0Dh, 0Ah, 0x00

include "boot.inc"

boot_entry:

cls

printsz msg

printsz log

mov  ah, 02h
mov  al, 10h
mov  cx, 0002h
mov  bx, 7E00h
movs es, 0000h
int 13h

mov sp, 7E0h
movs ds, 7E00h
jmp 0000:7E00h

cli
hlt
jmp $-2

times 200h-2h-$+$$ db 00h

dw 0AA55h
