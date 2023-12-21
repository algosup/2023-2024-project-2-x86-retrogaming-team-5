%define window_width  320
%define window_height  200
%define game_stats_height  24

nb_tile equ 0

section .data
    ; maze blueprint (not implemented yet)
    maze:   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,
            db 0b1000_0000,0b0000_0000,0b0001_1000,0b0000_0000,0b0000_0001,
            db 0b1000_0000,0b0000_0000,0b0001_1000,0b0000_0000,0b0000_0001,
            db 0b1001_1100,0b1111_1001,0b1001_1001,0b1001_1111,0b0011_1001,
            db 0b1001_1100,0b1111_1001,0b1001_1001,0b1001_1111,0b0011_1001,
            db 0b1000_0000,0b0000_0000,0b0000_0000,0b0000_0000,0b0000_0001,
            db 0b1000_0000,0b0000_0000,0b0000_0000,0b0000_0000,0b0000_0001,
            db 0b1111_1111,0b0011_0011,0b1110_0111,0b1100_1100,0b1111_1111,
            db 0b0000_0001,0b0011_0010,0b0000_0000,0b0100_1100,0b1000_0000,
            db 0b1111_1111,0b0011_0010,0b0000_0000,0b0100_1100,0b1111_1111,
            db 0b0000_0000,0b0000_0010,0b0000_0000,0b0100_0000,0b0000_0000,
            db 0b0000_0000,0b0000_0011,0b1111_1111,0b1100_0000,0b0000_0000,
            db 0b1111_1111,0b0011_0000,0b0000_0000,0b0000_1100,0b1111_1111,
            db 0b0000_0001,0b0011_0000,0b0000_0000,0b0000_1100,0b1000_0000,
            db 0b1111_1111,0b0011_0011,0b1111_1111,0b1100_1100,0b1111_1111,
            db 0b1000_0000,0b0000_0000,0b0001_1000,0b0000_0000,0b0000_0001,
            db 0b1000_0000,0b0000_0000,0b0001_1000,0b0000_0000,0b0000_0001,
            db 0b1001_1001,0b0011_1111,0b1001_1001,0b1111_1100,0b1001_1001,
            db 0b1001_1001,0b0011_1111,0b1001_1001,0b1111_1100,0b1001_1001,
            db 0b1000_0000,0b0000_0000,0b0000_0000,0b0000_0000,0b0000_0001,
            db 0b1000_0000,0b0000_0000,0b0000_0000,0b0000_0000,0b0000_0001,
            db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

drawMaze:
    
    mov si, maze ;set si as the maze array
    mov cl, 0b1000_0000
    dec si ;set cl as the comparator
    mov al,[si]   ; set al as the current byte of si's array
    
    mov di, window_width*game_stats_height    ; set the start of the maze
    xor bx, bx  
    drawingloop:

        cmp byte [nb_tile], 8
        jae resetCL

        cmp di, (window_width*window_height - 8)   ; check if the generation is complete
        jae .end               ; go to entity spawn if the maze generation is complete

        test al,cl  ;if current bit is set, create a tile
        jnz .drawTile
        jmp .drawPath
    
    .drawTile:
        push si ;push si,ax and cx to reuse them
        push ax
        push cx
        call changewall       ; set the sprite of a wall
        jmp CreateTile
    .drawPath:
        push si ;push si,ax and cx to reuse them
        push ax
        push cx
        mov si, path         ; set the sprite of a wall
        jmp CreateTile

    .end:
        ret

changewall:
    cmp si, wall2
    jne .bigwall
    jmp .smallwall

    .bigwall:
    mov si, wall
    ret
    .smallwall:
    mov si, wall2
    ret

CreateTile:
        call draw_tile       ; call draw_tile function from sprite.inc

        pop cx ;pop si ax and cx in the right order to reuse them
        pop ax
        pop si        

        shr cl,1 ;shift cl to the right       

        sub di, window_width*8                  ; go back at the previous line after drawing a tile
        add di, 8                               ; add the width of a tile
        add bx, 8
        add byte [nb_tile], 1
        cmp bx, window_width                   
        jb drawingloop                         ; loop while the window width is not reached
        add di, window_width*7                  ; go to the next tile row
        xor bx, bx                             
        ; jmp drawingloop                        ; repeat while the generation is not complete
        
        cmp cl,0 ;if cl is equal to 0 reset it
        je resetCL


; when cl is reseted, it means the current byte is finished
resetCL:  
    mov byte [nb_tile], 0
    mov cl, 0b1000_0000 ;reset cl to check the leftmost bit
    inc si              ;increase si to get next byte in maze
    mov al,[si]         ;move current byte to al

    jmp drawingloop