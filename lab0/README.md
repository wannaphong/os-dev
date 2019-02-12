# Lab 0

show 'a'

compile:

nasm -f bin -o main.img main.asm

using :

bochs     -qf /dev/null     'ata0-master: type=disk, path="main.img", mode=flat, cylinders=1, heads=1, spt=1'     'boot: disk'     'display_library: sdl'     'megs: 128'
