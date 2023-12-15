
org 100h

%define SCREENW 320
%define SCREENH 200

%define SPRITEW 16
%define SPRITEH 16
section .data

xpos_reindeer1 dw 10524

xpos_reindeer2 dw 10251

xpos_reindeer3 dw 56520

xpos_reindeer4 dw 56336
xPos dw 34160 - (90-4480)

GPos dw 14500

xVelocity dw 1
;14 
spritew dw 16

spriteh dw 16

old_XPOS dw 34160 - (90-4480)

yPos dw 0

old_time equ 0xf9fe+0x06

charValue db 'X$'

charNoKey db 'False$'

actualkeypressed dw 0

section .text
    global _start
_start:
    ; Initialize graphics mode
    mov ah, 00h ; set video mode requirement
    mov al, 13h ; set video mode option 320 x 200 256 colors
    int 10h

call drawMaze
call drawDot
; Main game loop
    gameloop:
        int 0x1a
        cmp dx, [old_time]
        ;je gameloop
        mov [old_time], dx
        call update_score
        call draw_reindeer1
        call draw_reindeer2
        call draw_reindeer3
        call draw_reindeer4
        call read_character_key_was_pressed
        call spawn_entities
   
       
        ; Delay to slow down animation
        jmp gameloop
spawn_entities:
    mov di, [xPos]
    call draw_sprite
    ret

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
        add di, SCREENW-8
        dec dx
        jnz .eachLine
    ret

    
%include "../map/map.asm"
%include "../sprite/sprite.asm"
%include "../spritelist/spritelist.asm"
%include "../collision/collision.asm"
%include "../score/score.asm"
%include "../dot/dot.asm"


