org 100h

%define SCREENW 320
%define SCREENH 200

%define SPRITEW 16
%define SPRITEH 16
section .data

xpos_ghost1 dw 34160 - 3322

xpos_ghost2 dw 34160 - 3306

xpos_ghost3 dw 34160 - 3290

xpos_ghost4 dw 34160 - 3274

xPos dw 34000 - 960

GPos dw 14500

xVelocity dw 1

spritew dw 16

spriteh dw 16

old_XPOS dw 0

yPos dw 0

old_time equ 0xf9fe+0x06

charValue db 'X$'

charNoKey db 'False$'



section .bss
keyPressed resb 1  ; Reserve a byte for the state of the key
section .text
start:
        
     
        call drawMaze
; Main game loop
    gameloop:
        int 0x1a
        cmp dx, [old_time]
        ;jne gameloop
        mov [old_time], dx
        call update_score
        call draw_ghost1
        call draw_ghost2
        call draw_ghost3
        call draw_ghost4
        call read_character_key_was_pressed
        call spawn_entities
   
       
        ; Delay to slow down animation
        jmp gameloop
spawn_entities:
    mov di, [xPos]
    call draw_sprite
    ret
 ; End of game, return to text mode
; Function to read key pressed
read_character_key_was_pressed:
    mov ah, 00h
    int 16h
    cmp ah, 0E0h
    jne handle_input
    ret

handle_input:
    cmp ah, 4Dh   ; Right Key ;4DH             
    je move_right
    cmp ah, 4Bh    ; Left Key ;4BH   
    je move_left
    cmp ah, 48h   ; Up key ;48H        
    je move_up
    cmp ah, 50h  ; Down key ;50h
    je move_down
    cmp ah, 27
    je esc
    ret



move_right:
    call boucle_changeright
    mov bx, [xPos]
    mov [old_XPOS], bx
    add bx, 1 
    mov [xPos], bx
    
     .check_col_top:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add word [yPos], 15
        mov cx, [yPos]                           
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
    
    .check_col_down:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 8
        add word [yPos], 15
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end

    .check_col_middle:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 15
        add word [yPos], 15
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
        cmp bx, 2
        jne .moving

    .remove_candy:
        ; Remove candy
        push bx
        mov bx, 10
        pop bx


    .moving:
        mov di, [xPos]
        call draw_sprite
        ret

    .end:
        mov bx, [old_XPOS]
        mov [xPos], bx
        mov di, [xPos]
        call draw_sprite
        ret
     
move_left:
    call boucle_changeleft
    mov bx, [xPos]
    mov [old_XPOS], bx
    sub bx, 1
    mov [xPos], bx

    .check_col_top:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add word [yPos], 0
        mov cx, [yPos]                           
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
    
    .check_col_down:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 8
        add word [yPos], 0
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end

    .check_col_middle:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 15
        add word [yPos], 0
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
        cmp bx, 2
        jne .moving

    .remove_candy:
        ; Remove candy
        push bx
        mov bx, 10
        pop bx


    .moving:
        mov di, [xPos]
        call draw_sprite
        ret

    .end:
        mov bx, [old_XPOS]
        mov [xPos], bx
        mov di, [xPos]
        call draw_sprite
        ret
    




move_up:
    call boucle_changeUp
    mov bx, [xPos]
    mov [old_XPOS], bx
    sub bx, SCREENW
    mov [xPos], bx
     .check_col_top:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add word [yPos], 0
        mov cx, [yPos]                           
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
    
    .check_col_down:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 0
        add word [yPos], 15
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end

    .check_col_middle:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 0
        add word [yPos], 8
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
        cmp bx, 2
        jne .moving

    .remove_candy:
        ; Remove candy
        push bx
        mov bx, 10
        pop bx


    .moving:
        mov di, [xPos]
        ret

    .end:
        mov bx, [old_XPOS]
        mov [xPos], bx
        mov di, [xPos]
        ret
    

move_down:
    call boucle_changedn
    mov bx, [xPos]
    mov [old_XPOS], bx
    add bx,  SCREENW
    mov [xPos], bx
     .check_col_top:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add word [yPos], 15
        mov cx, [yPos]                           
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
    
    .check_col_down:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 15
        add word [yPos], 15
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end

    .check_col_middle:
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 15
        add word [yPos], 8
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
        cmp bx, 2
        jne .moving

    .remove_candy:
        ; Remove candy
        push bx
        mov bx, 10
        pop bx


    .moving:
        mov di, [xPos]
        ret

    .end:
        mov bx, [old_XPOS]
        mov [xPos], bx
        mov di, [xPos]
        ret

esc:
    mov ax, 03h
    int 10h
    mov ax, 4C00h
    int 21h

   boucle_changeright:
        cmp si, santaRClose
        jne .pacmanopnd
        jmp .pacmanclosd

    .pacmanopnd:
       mov si, santaROpen
       ret
     .pacmanclosd:
        mov si, santaRClose
        ret

    boucle_changeleft:
        cmp si, SantaLClose
        jne .pacmanopend
        jmp .pacmanclosed

    .pacmanopend:
       mov si, SantaLOpen
       ret
     .pacmanclosed:
        mov si, SantaLClose
        ret

    boucle_changeUp:
        cmp si, SantaUClose
        jne .pacmnopend
        jmp .pacmnclosed

    .pacmnopend:
       mov si, SantaUOpen
       ret
    .pacmnclosed:
        mov si, SantaUClose
        ret
    
    boucle_changedn:
        cmp si, SantaDOpen
        jne .pacmnopd
        jmp .pacmncd

    .pacmnopd:
       mov si,SantaDOpen
       ret
    .pacmncd:
        mov si, SantaDClose
        ret


; Function to clear the screen
draw_sprite:
    mov ax, 0xA000
    mov es, ax
    mov dx, 16
            .eachLine:
            mov cx, 16
            rep movsb
        add di, SCREENW-16
        dec dx
        jnz .eachLine
    ret
draw_letter:
    mov ax, 0xA000
    mov es, ax
    mov dx, 7
        .eachLine:
            mov cx, 7
            rep movsb
            add di, window_width-7
            dec dx
            jnz .eachLine
        ret

draw_ghost1:
   mov si, galaxian
   mov di, [xpos_ghost1]
   mov ax, 0xA000
   mov es, ax 
   mov dx, 16
        .eachLine:
            mov cx, 16
            rep movsb
            add di, window_width-16
            dec dx
            jnz .eachLine
        ret
draw_ghost2:
   mov si, pomme
   mov di, [xpos_ghost2]
   mov ax, 0xA000
   mov es, ax 
   mov dx, 16
        .eachLine:
            mov cx, 16
            rep movsb
            add di, window_width-16
            dec dx
            jnz .eachLine
        ret
draw_ghost3:
   mov si, cerise
   mov di, [xpos_ghost3]
   mov ax, 0xA000
   mov es, ax 
   mov dx, 16
        .eachLine:
            mov cx, 16
            rep movsb
            add di, window_width-16
            dec dx
            jnz .eachLine
        ret
draw_ghost4:
   mov si, fraise
   mov di, [xpos_ghost4]
   mov ax, 0xA000
   mov es, ax 
   mov dx, 16
        .eachLine:
            mov cx, 16
            rep movsb
            add di, window_width-16
            dec dx
            jnz .eachLine
        ret