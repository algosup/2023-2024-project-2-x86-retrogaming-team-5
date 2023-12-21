; org 100h

; section .data

; ; Bugs Positions

; reindeer1_default_Pos equ window_width*136+(window_width-16)/2  ; Outside of the house
; reindeer2_default_Pos equ window_width*108+(window_width-16)/2  ; Center in the house
; reindeer3_default_Pos equ window_width*108+((window_width-16)/2 - 24)     ; Left in the house
; reindeer4_default_Pos equ window_width*108+((window_width-16)/2 + 24)     ; Right in the house



; reindeer1_pos dw reindeer1_default_Pos
; reindeer1_YPos dw 0


; reindeer_velocity dw 1, -1, -320, 320


; reindeer2_pos dw reindeer2_default_Pos
; reindeer3_pos dw reindeer3_default_Pos
; reindeer3_YPos dw 0
; reindeer4_pos dw reindeer4_default_Pos
; reindeer4_YPos dw 0

; section .text

; move_reindeer1:
;     xor bx, bx
;     mov si, 0
;     mov si, reindeer_velocity
;     cmp word [si], 1
;     je .check_right_col_top
;     jmp .check_left_col_top

;     ; Right Collisions
;     .check_right_col_top:
;         mov ax, [reindeer1_pos]
;         mov cx, window_width
;         xor dx, dx
;         div cx
;         mov [reindeer1_YPos], dx
;         add word [reindeer1_YPos], 16
;         mov cx, [reindeer1_YPos]       
;         mov dx, ax      
;         call getColor 

;         cmp bx, 0
;         je .collide
        
;         add dx, -2
;         add cx, 2
;         call getColor
;         cmp bx, 6
;         je .kill_santa


        
;     .check_right_col_bottom:
;         mov ax, [reindeer1_pos]
;         mov cx, window_width
;         xor dx, dx
;         div cx
;         mov [reindeer1_YPos],dx
;         add ax, 15
;         add word [reindeer1_YPos], 16
;         mov cx, [reindeer1_YPos]         
;         mov dx, ax      
;         call getColor 

        
;         cmp bx, 0
;         je .collide
        
;         add dx, -2
;         add cx, 2
;         call getColor
;         cmp bx, 6
;         je .kill_santa

;         jmp .moving

; ; Left Collisions
;     .check_left_col_top:
;         mov ax, [reindeer1_pos]
;         mov cx, window_width
;         xor dx, dx
;         div cx
;         mov [reindeer1_YPos], dx
;         sub word [reindeer1_YPos], 1
;         mov cx, [reindeer1_YPos]       
;         mov dx, ax      
;         call getColor 

;         cmp bx, 0
;         je .collide

;         add dx, -2
;         add cx, 2
;         call getColor
;         cmp bx, 6
;         je .kill_santa

;     .check_left_col_bottom:
;         mov ax, [reindeer1_pos]
;         mov cx, window_width
;         xor dx, dx
;         div cx
;         mov [reindeer1_YPos],dx
;         add ax, 15
;         sub word [reindeer1_YPos], 1
;         mov cx, [reindeer1_YPos]         
;         mov dx, ax
;         call getColor 

;         cmp bx, 0
;         je .collide

;         add dx, -2
;         add cx, -2
;         call getColor
;         cmp bx, 6
;         je .kill_santa

;         jmp .moving

;     .kill_santa:
;         xor si, si
;         mov si, isFrenzy
;         cmp byte [si], 1
;         je .skip_dec_life
;             call dec_life
;         .skip_dec_life:
;             jmp .moving

;     .moving:
;         xor bx, bx
;         mov si, 0
;         mov si, reindeer_velocity
;         mov bx, [si]
;         add bx, [reindeer1_pos]
;         mov [reindeer1_pos], bx


;         mov di, [reindeer1_pos]


;         xor si, si
;         mov si, isFrenzy
;         cmp byte [si], 1
;         je .frenzymode
;         mov si, reindeer1
;         call draw_sprite
;         ret

;         .frenzymode:
;         mov si, reindeer_frenzy
;         call draw_sprite
;         ret

;     .collide:
;         xor bx, bx
;         mov si, 0
;         mov si, reindeer_velocity
;         neg word [si]
;         jmp .moving
;         ret

;     .eaten:
;         mov cx, [killStreak]
;         mov ax, 200
;         mul cx

;         mov bx, ax
;         call add_score
;         inc word [killStreak]

;         ; disable frenzy mode
;         mov si, 0
;         mov si, isFrenzy           ; Load the address into si
;         mov byte [si + 0], 0       ; Store the value at the current address

;         mov si, clean
;         mov di, [reindeer1_pos]
;         call draw_sprite

;         mov word [reindeer1_pos], reindeer1_default_Pos

;         ret

; move_reindeer3:

;     xor bx, bx
;     mov si, 0
;     mov si, reindeer_velocity
;     add si, 4
;     cmp word [si], 320
;     je .check_down_col_left
;     jmp .check_up_col_left

;     .check_up_col_left:
;         mov ax, [reindeer3_pos]
;         mov cx, window_width
;         xor dx, dx
;         div cx
;         mov [reindeer3_YPos], dx
;         add ax, -1
;         add word [reindeer3_YPos], 0
;         mov cx, [reindeer3_YPos]       
;         mov dx, ax      
;         call getColor 

;         cmp bx, 0
;         je .collide
        
;         add dx, -2
;         add cx, 2
;         call getColor
;         cmp bx, 6
;         je dec_life


        
;     .check_up_col_right:
;         mov ax, [reindeer3_pos]
;         mov cx, window_width
;         xor dx, dx
;         div cx
;         mov [reindeer3_YPos],dx
;         add ax, -1
;         add word [reindeer3_YPos], 15
;         mov cx, [reindeer3_YPos]
;         mov dx, ax      
;         call getColor 

        
;         cmp bx, 0
;         je .collide
        
;         add dx, -2
;         add cx, 2
;         call getColor
;         cmp bx, 6
;         je dec_life

;         jmp .moving


;     .check_down_col_left:
;         mov ax, [reindeer3_default_Pos]
;         mov cx, window_width
;         xor dx, dx
;         div cx
;         mov [reindeer3_YPos], dx
;         add ax, 16
;         add word [reindeer3_YPos], 0
;         mov cx, [reindeer3_YPos]       
;         mov dx, ax      
;         call getColor 

;         cmp bx, 0
;         je .collide
    
;         jmp .moving

;     .moving:
;         xor bx, bx
;         mov si, 0
;         mov si, reindeer_velocity
;         add si, 4
;         mov bx, [si]

;         add bx, [reindeer3_pos]
;         mov [reindeer3_pos], bx


;         mov di, [reindeer3_pos]

;         xor si, si
;         mov si, isFrenzy
;         add si, 2
;         cmp byte [si], 1
;         je .frenzymode
;         xor si, si
;         mov si, reindeer3
;         call draw_sprite
;         ret

;         .frenzymode:
;         mov si, reindeer3_frenzy
;         call draw_sprite
;         ret

;     .collide:
;         xor bx, bx
;         mov si, 0
;         mov si, reindeer_velocity
;         add si, 4
;         neg word [si]
;         jmp .moving
;         ret

;     .eaten:
;         ret


; move_bug4:
;     .eaten:
;         ret