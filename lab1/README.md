# Lab 1

show 'Hello World'

## Compile

nasm -f bin -o bootloader.img bootloader.asm

## Using

bochs     -qf /dev/null     'ata0-master: type=disk, path="bootloader.img", mode=flat, cylinders=1, heads=1, spt=1'     'boot: disk'     'display_library: sdl'     'megs: 128'

## Resource

- [NASM Bootloader x86 The Netwide Assembler Bochs Emulator](https://www.youtube.com/watch?v=ZA5MpqVtFeI)
