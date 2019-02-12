# Lab 0

show 'a'

## Compile

nasm -f bin -o main.img main.asm

## Using

bochs     -qf /dev/null     'ata0-master: type=disk, path="main.img", mode=flat, cylinders=1, heads=1, spt=1'     'boot: disk'     'display_library: sdl'     'megs: 128'

## Resource

- [Why BIOS loads MBR into 0x7C00 in x86 ?](https://www.glamenv-septzen.net/en/view/6)
