bits 16

jmp bootloader

message db 'Hello World',0

printMessage:
    push ax

    .loop:
        lodsb
        or al,al
        jz .quitLoop
        mov ah,0x0e
        int 0x10
        jmp .loop
    .quitLoop:
        pop ax
        ret
bootloader:
    cli

    mov ax,0x07c0
    mov ds,ax
    mov gs,ax
    mov fs,ax
    mov es,ax

    mov ax,0x07e0
    mov ss,ax
    mov bp,ax

    mov sp,0xff

    sti

    mov si,message
    call printMessage

    cli
    hlt

    times 510-($-$$) db 0

    DB 0x55
    DB 0xAA

    times 1024*1024 db 0
