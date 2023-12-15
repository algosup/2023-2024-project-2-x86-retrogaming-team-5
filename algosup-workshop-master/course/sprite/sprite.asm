
section .data
collisiondeer db 0
killStreak db 1
section .bss
keyPressed resb 1  ; Reserve a byte for the state of the key
section .text
start:

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
    mov word [xVelocity], 1
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
        add ax, 7
        add word [yPos], 7
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        cmp bx, 0
        je .end
        cmp bx, 2
        je .remove_candy
        jmp .moving

    .remove_candy:
        ; Remove candy
        call EraseCandyRight
        dec word [candies_remain]
        push bx
        mov bx, 10
        call add_score
        pop bx
        jmp .moving


    .moving:
        mov si, santaROpen
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
        add ax, 7
        add word [yPos], 15
        mov cx, [yPos]                             
        mov dx, ax                          
        call getColor 

        
        cmp bx, 0
        je .end
        cmp bx, 2
        je .remove_candy
        jmp .moving

    .remove_candy:
        ; Remove candy
        call EraseCandyLeft
        dec word [candies_remain]
        push bx
        mov bx, 10
        call add_score
        pop bx
        jmp .moving



    .moving:
        mov si, SantaLOpen
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
        call EraseCandyTop
        dec word [candies_remain]
        push bx
        mov bx, 10
        call add_score
        pop bx
        jmp .moving




    .moving:
        mov si, SantaUOpen
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
        call EraseCandyBottom
        dec word [candies_remain]
        push bx
        mov bx, 10
        call add_score
        pop bx
        jmp .moving




    .moving:
        mov si, SantaDOpen
        mov di, [xPos]
        call draw_sprite
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

draw_reindeer1:
   mov si, reindeer1
   mov di, [xpos_reindeer1]
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
draw_reindeer2:
   mov si, reindeer2
   mov di, [xpos_reindeer2]
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
draw_reindeer3:
   mov si, reindeer3
   mov di, [xpos_reindeer3]
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
draw_reindeer4:
   mov si, reindeer4
   mov di, [xpos_reindeer4]
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
EraseCandyRight:
    mov al,0x00
    mov di, [xPos]
    add di, 7
    sub di, 320
    mov [es:di],al

    add di, 320

    mov [es:di],al

    ret
EraseCandyLeft:
    mov al,0x00
    mov di, [xPos]
    add di, 7   
    sub di, 320
    mov [es:di],al

    add di, 320

    mov [es:di],al

    ret
EraseCandyTop:
    mov al,0x00
    mov di, [xPos]
    add di,7
    sub di,320
    mov [es:di],al

    add di,320

    mov [es:di],al

    ret
EraseCandyBottom:
    mov al,0x00
    mov di, [xPos]
    add di,7
    sub di,320
    mov [es:di],al

    add di,1

    mov [es:di],al

    ret
