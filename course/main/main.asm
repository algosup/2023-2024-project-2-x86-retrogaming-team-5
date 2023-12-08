org 100h


 S_WIDTH equ 320
 S_HEIGHT equ 200
section .data

section .text
    global _start
_start:
    ; Initialize graphics mode
    mov ah, 00h ; set video mode requirement
    mov al, 13h ; set video mode option 320 x 200 256 colors
    int 10h



    
 
    .spawn_entities:
        jmp start

keyHandler:
    xor ax, ax
    mov ah, 00h
    int 16h
    ret

draw_tile:
    mov ax, 0xA000
    mov es, ax
    mov dx, 8
        .eachLine:
        mov cx, 8
        rep movsb
        add di, S_WIDTH-8
        dec dx
        jnz .eachLine
    ret

    
%include "../map/map.asm"
%include "../sprite/sprite.asm"
%include "../spritelist/spritelist.asm"
%include "../collision/collision.asm"
%include "../score/score.asm"


