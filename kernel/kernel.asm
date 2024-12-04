org 8100h

mov ah, 0x0E

mov si, msg

print_loop:
    lodsb
    cmp al, 0
    je done
    int 0x10
    jmp print_loop

done:
    cli
    hlt

msg db 'xeno v1 by Andrew. 2024', 0

times 0E0h*200h+$$-$ db 0x00
