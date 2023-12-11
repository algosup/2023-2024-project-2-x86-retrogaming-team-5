

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