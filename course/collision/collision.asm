org 100h

section .data

    colorWall dw 0xfe;0xff                        ; color of the walls
    ;candyColor dw 0x43

section .text

; get the color of of pixel
; color in a

getColor:
    mov ah, 0DH                             ; AH = 0Dh for "Read Dot" function
    int 0x10

    mov bx, 0

    ; color of the pixel in al
    cmp al, [colorWall]
    je .end 

    mov bx, 1

    ;cmp al, [candyColor]
    ;je .candy
    ;jmp .end
   

    .candy:
        mov bx, 2

    .end:
        ret