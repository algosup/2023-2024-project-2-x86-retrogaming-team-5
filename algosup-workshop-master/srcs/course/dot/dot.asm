%define firstLine 39*window_width+15
%define secondLine firstLine+(320*8)
%define thirdLine firstLine+(320*16)
%define fourthLine firstLine+(320*24)
%define fifthLine firstLine+(320*32)
%define sixthLine firstLine+(320*38)
%define seventhLine firstLine+(320*44)
%define eightLine firstLine+(320*50)
%define ninthLine firstLine+(320*56)
%define tenthLine firstLine+(320*62)
%define eleventhLine firstLine+(320*68)
%define twelfthLine firstLine+(320*88)
%define thirteenthLine firstLine+(320*96)
%define fourteenthLine firstLine+(320*104)
%define fifteenthLine firstLine+(320*112)
%define sixteenthLine firstLine+(320*120)
%define seventeenthLine firstLine+(320*128)
%define eighteenthLine firstLine+(320*136)
%define nineteenthLine firstLine+(320*144)

Dots_pos        dw firstLine, firstLine+ 8, firstLine+ 16, firstLine+ 24, firstLine+ 32, firstLine+ 40, firstLine+ 48, firstLine+ 56 
                dw firstLine+ 64, firstLine+ 72, firstLine+ 80, firstLine+ 88, firstLine+ 96, firstLine+ 104, firstLine+ 112, firstLine+ 120, firstLine+ 128
                dw firstLine+ 160, firstLine+ 168, firstLine+ 176, firstLine+ 184, firstLine+ 192, firstLine+ 200, firstLine+ 208, firstLine+ 216, firstLine+ 224
                dw firstLine+ 232, firstLine+ 240, firstLine+ 248, firstLine+ 256, firstLine+ 264, firstLine+ 272, firstLine+ 280, firstLine+ 288 
                ; 2nd line
                dw secondLine, secondLine+ 40, secondLine+ 96, secondLine+ 128, secondLine+ 160, secondLine+ 192, secondLine+ 248, secondLine+ 288
                ; 3rd line
                dw thirdLine, thirdLine+ 40, thirdLine+ 96, thirdLine+128, thirdLine+ 160, thirdLine+ 192, thirdLine+ 248, thirdLine+ 288 
                ; 4th line
                dw fourthLine, fourthLine+ 40
                dw fourthLine+ 96, fourthLine+ 128
                dw fourthLine+ 160, fourthLine+ 192 
                dw fourthLine+ 248, fourthLine+ 288 
                ; 5th line
                dw fifthLine, fifthLine+ 8, fifthLine+ 16, fifthLine+ 24, fifthLine+ 32, fifthLine+ 40, fifthLine+ 48, fifthLine+ 56 
                dw fifthLine+ 64, fifthLine+ 72, fifthLine+ 80, fifthLine+ 88, fifthLine+ 96, fifthLine+ 104, fifthLine+ 112, fifthLine+ 120, fifthLine+ 128
                dw fifthLine+ 138, fifthLine+ 150, fifthLine+ 160, fifthLine+ 168, fifthLine+ 176, fifthLine+ 184, fifthLine+ 192, fifthLine+ 200, fifthLine+ 208, fifthLine+ 216, fifthLine+ 224
                dw fifthLine+ 232, fifthLine+ 240, fifthLine+ 248, fifthLine+ 256, fifthLine+ 264, fifthLine+ 272, fifthLine+ 280, fifthLine+ 288   
                ; 6th line
                dw sixthLine+ 56
                dw sixthLine+ 88
                dw sixthLine+ 200
                dw sixthLine+ 232
                ; 7th line*
                dw seventhLine+ 56
                dw seventhLine+ 88
                dw seventhLine+ 200
                dw seventhLine+ 232
                ; 8th line
                dw eightLine+ 56, eightLine+ 88, eightLine+ 200, eightLine+ 232
                ; 9th line
                dw ninthLine+ 56, ninthLine+ 88, ninthLine+ 200, ninthLine+ 232
                ; 10th line
                dw tenthLine+ 56, tenthLine+ 88, tenthLine+ 200, tenthLine+ 232
                ; 11th line
                dw eleventhLine+ 56, eleventhLine+ 88, eleventhLine+ 200, eleventhLine+ 232
                ; 12th line
                dw twelfthLine+ 56, twelfthLine+ 88, twelfthLine+ 200, twelfthLine+ 232
                ; 13th line
                dw thirteenthLine+ 56, thirteenthLine+ 88, eleventhLine+ 200, eleventhLine+ 232
                ; 14th line
                dw eleventhLine+ 56, eleventhLine+ 88, eleventhLine+ 200, eleventhLine+ 232
                ; 15th line
                dw sixteenthLine, sixteenthLine+ 24, sixteenthLine+ 32, sixteenthLine+ 40, sixteenthLine+ 48, sixteenthLine+ 56, sixteenthLine+ 64, sixteenthLine+ 72, sixteenthLine+ 80, sixteenthLine+ 88
                dw sixteenthLine+ 96, sixteenthLine+ 120, sixteenthLine+ 168, sixteenthLine+ 192, sixteenthLine+ 200, sixteenthLine+ 208, sixteenthLine+ 216, sixteenthLine+ 224, sixteenthLine+ 232
                dw sixteenthLine+ 240, sixteenthLine+ 248, sixteenthLine+ 256, sixteenthLine+ 264, sixteenthLine+ 288
                ; 18th line
                dw seventeenthLine, seventeenthLine+ 48, seventeenthLine+ 120,seventeenthLine+ 128,seventeenthLine+ 136,seventeenthLine+ 144,seventeenthLine+ 152,seventeenthLine+ 160, seventeenthLine+ 168, seventeenthLine+ 240, seventeenthLine+ 288
                ; 19th line
                dw eighteenthLine, eighteenthLine+ 48, eighteenthLine+ 120, eighteenthLine+ 168, eighteenthLine+ 240, eighteenthLine+ 288
                ; 20th line
                dw nineteenthLine, nineteenthLine+ 8, nineteenthLine+ 16, nineteenthLine+ 24, nineteenthLine+ 40, nineteenthLine+ 48, nineteenthLine+ 56 
                dw nineteenthLine+ 64, nineteenthLine+ 72, nineteenthLine+ 80, nineteenthLine+ 88, nineteenthLine+ 96, nineteenthLine+ 104, nineteenthLine+ 112, nineteenthLine+ 120 
                dw nineteenthLine+ 168, nineteenthLine+ 176, nineteenthLine+ 184, nineteenthLine+ 192, nineteenthLine+ 200, nineteenthLine+ 208, nineteenthLine+ 216, nineteenthLine+ 224
                dw nineteenthLine+ 232, nineteenthLine+ 240, nineteenthLine+ 248, nineteenthLine+ 264, nineteenthLine+ 272, nineteenthLine+ 280, nineteenthLine+ 288

drawDot:
        mov ax, 0xA000
        mov cx,0
        mov si, Dots_pos
        mov es,ax
        mov di,[si]
        mov al, 0x43

        DrawDotLoop:
        
        mov [es:di], al

        inc di
        mov [es:di], al
        
        call .newLine

        add si,2 ; add 2 because idk why index need to be multiplied by 2
        mov di, [si]

        inc cx
        cmp cx,270
        jb DrawDotLoop
        ret

        .newLine:
        add di, window_width
        add di, -1
        mov [es:di], al
        inc di
        mov [es:di], al
        ret