section .data

    ; KeyBind
    %DEFINE key_up 2Ch      ; Z
    %DEFINE key_up2 48h     ; Arrow Up

    %DEFINE key_down 1Fh    ; S
    %DEFINE key_down2 50h   ; Arrow Down

    %DEFINE key_left 10h    ; Q
    %DEFINE key_left2 4BH   ; Arrow Left

    %DEFINE key_right 20h   ; D
    %DEFINE key_right2 4DH  ; Arrow Right

    %DEFINE key_exit 01h    ; Escape
    %DEFINE key_menu 1Ch    ; Enter

    waitkeyPressed dw 0
    newKeyPressed dw 0

    testChar dw "1$"

section .text

keyboard_handler:

    ; read key buffer state
    mov ah, 01h
    int 16h
    jz .skip_buffer

    .read_buffer:
        ; get the key pressed
        mov ah, 00h
        int 16h

        ; save the key pressed in newKeyPressed
        mov [newKeyPressed], ah

        call is_valid_key
        cmp bx, 0
        jne .valid_key

        mov bh, [waitkeyPressed]
        mov [newKeyPressed], bh

        .valid_key:

        push cx
        push ax

        pop ax
        pop cx
        
        ; Check collision with a wall
        cmp bx, 0
        jne .skip_key_change

        mov ch, [waitkeyPressed]
        mov ax, cx

        ; key then keyboard buffer status
        .skip_key_change:
            mov bx, ax
            mov ah, 01h
            int 16h
            jnz .read_buffer

    .skip_buffer:

        ; compare new Key Pressed with Key Pressed and update it if needed
        mov bh, [newKeyPressed]
        cmp byte [waitkeyPressed], bh
        je .skip_update_key

        cmp bx, 0
        je .skip_update_key

        ; update keyPressed
        mov bh, [newKeyPressed]
        mov [waitkeyPressed], bh

        .skip_update_key:
        ; Exit
        cmp byte [waitkeyPressed], key_exit
        je .exit

        ; Key_Up
        cmp byte [waitkeyPressed], key_up
        je .moveUp

        ; Key_Down
        cmp byte [waitkeyPressed], key_down
        je .moveDn

        ; Key_Right
        cmp byte [waitkeyPressed], key_right
        je .moveRg

        ; Key_Left
        cmp byte [waitkeyPressed], key_left
        je .moveLf

        ; Key_Up 2
        cmp byte [waitkeyPressed], key_up2
        je .moveUp

        ; Key_Down 2
        cmp byte [waitkeyPressed], key_down2
        je .moveDn

        ; Key_Right 2
        cmp byte [waitkeyPressed], key_right2
        je .moveRg

        ; Key_Left 2
        cmp byte [waitkeyPressed], key_left2
        je .moveLf



        jmp .end_buffer

        .moveUp:
            call boucle_changeUp
            mov bx, [xPos]
            mov [old_XPOS], bx
            sub bx, SCREENW
            mov [xPos], bx
            call move_up
            jmp .end_buffer
        .moveDn:
            call boucle_changedn
            mov bx, [xPos]
            mov [old_XPOS], bx
            add bx,  SCREENW
            mov [xPos], bx
            call move_down
            jmp .end_buffer
        .moveRg:
            call boucle_changeright
            mov bx, [xPos]
            mov [old_XPOS], bx
            add bx, 1
            mov [xPos], bx
            call move_right
            jmp .end_buffer
        .moveLf:
            call boucle_changeleft
            mov bx, [xPos]
            mov [old_XPOS], bx
            sub bx, 1
            mov [xPos], bx
            call move_left
            jmp .end_buffer
        .exit:
            mov ah, 4ch
            xor al, al
            int 21h

        .end_buffer:
            ret

check_col:

    ; Auto go right
    cmp byte [newKeyPressed], key_right
    je .right_col

    cmp byte [newKeyPressed], key_right2
    je .right_col

    ; Auto move left
    cmp byte [newKeyPressed], key_left
    je .left_col

    cmp byte [newKeyPressed], key_left2
    je .left_col

    ; Auto Go up
    cmp byte [newKeyPressed], key_up
    je .up_col

    cmp byte [newKeyPressed], key_up2
    je .up_col

    ; Auto move down
    cmp byte [newKeyPressed], key_down
    je .down_col

    cmp byte [newKeyPressed], key_down2
    je .down_col

    .right_col:

    .right_bottom:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 15
        add word [yPos], 16
        mov cx, [yPos]
        mov dx, ax
        call getColor 

        cmp bx, 0
        je .end

    .right_middle:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 8
        add word [yPos], 16
        mov cx, [yPos]
        mov dx, ax
        call getColor 

        cmp bx, 0
        je .end

    .right_top:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        ; add ax, 16
        add word [yPos], 16
        mov cx, [yPos]
        mov dx, ax
        call getColor

        ret

    .left_col:

    .left_bottom:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 0
        sub word [yPos], 1
        mov cx, [yPos]
        mov dx, ax

        call getColor 

        cmp bx, 0
        je .end

    .left_middle:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 8
        sub word [yPos], 1
        mov cx, [yPos]
        mov dx, ax

        call getColor 

        cmp bx, 0
        je .end

    .left_top:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 15
        sub word [yPos], 1
        mov cx, [yPos]
        mov dx, ax

        call getColor

        ret

    .up_col:

    .up_left:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        sub ax, 1
        add word [yPos], 0
        mov cx, [yPos]
        mov dx, ax
        call getColor

        cmp bx, 0
        je .end

    .up_middle:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        sub ax, 1
        add word [yPos], 8
        mov cx, [yPos]
        mov dx, ax
        call getColor

        cmp bx, 0
        je .end

    .up_right:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        sub ax, 1
        add word [yPos], 15
        mov cx, [yPos]
        mov dx, ax
        call getColor 

        ret


    .down_col:

    .down_left:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 16
        add word [yPos], 0
        mov cx, [yPos]
        mov dx, ax

        call getColor

        cmp bx, 0
        je .end

    .down_middle:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 16
        add word [yPos], 8
        mov cx, [yPos]
        mov dx, ax

        call getColor

        cmp bx, 0
        je .end

    .down_right:
        
        ; Check Collisions at 1 px at Right of Ranky
        mov ax, [xPos]
        mov cx, window_width
        xor dx, dx
        div cx
        mov [yPos], dx
        add ax, 16
        add word [yPos], 15
        mov cx, [yPos]
        mov dx, ax

        call getColor 

        ret

    .end:
        ret

is_valid_key:

    ; Move Right
    cmp byte [newKeyPressed], key_right
    je .true

    cmp byte [newKeyPressed], key_right2
    je .true

    ; Move left
    cmp byte [newKeyPressed], key_left
    je .true

    cmp byte [newKeyPressed], key_left2
    je .true

    ; Move up
    cmp byte [newKeyPressed], key_up
    je .true

    cmp byte [newKeyPressed], key_up2
    je .true

    ; Move down
    cmp byte [newKeyPressed], key_down
    je .true

    cmp byte [newKeyPressed], key_down2
    je .true

    ; Escape
    cmp byte [newKeyPressed], key_exit
    je .true

    ; Menu
    cmp byte [newKeyPressed], key_menu
    je .true
    jmp .false


    .true:
        mov bx, 1
        ret

    .false:
        mov bx, 0
        ret