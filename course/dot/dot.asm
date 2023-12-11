%define firstLine 39*window_width+15
%define secondLinee firstLine+(320*8)
%define secondLine firstLine+(320*14)
%define thirdLine firstLine+(320*20)
%define fourthLine firstLine+(320*26)
%define fifthLine firstLine+(320*32)
%define sixthLine firstLine+(320*38)
%define seventhLine firstLine+(320*44)
%define eightLine firstLine+(320*50)
%define ninthLine firstLine+(320*56)
%define tenthLine firstLine+(320*62)
%define eleventhLine firstLine+(320*68)
%define twelfthLine firstLine+(320*74)
%define thirteenthLine firstLine+(320*80)
%define fourteenthLine firstLine+(320*86)
%define fifteenthLine firstLine+(320*92)
%define sixteenthLine firstLine+(320*98)
%define seventeenthLine firstLine+(320*104)
%define eighteenthLine firstLine+(320*110)
%define nineteenthLine firstLine+(320*116)
%define twentiethLine  firstLine+(320*122)
%define twentiethfirstLine firstLine+(320*128)
%define twentiethtwooLine firstLine+(320*134)
%define twentieththirdLine firstLine+(320*140)
%define twentiethfourthLine firstLine+(320*146)

Dots_pos        dw firstLine, firstLine+ 8, firstLine+ 16, firstLine+ 24, firstLine+ 32, firstLine+ 40, firstLine+ 48, firstLine+ 56 
                dw firstLine+ 64, firstLine+ 72, firstLine+ 80, firstLine+ 88, firstLine+ 96, firstLine+ 104, firstLine+ 112, firstLine+ 120, firstLine+ 128
                dw firstLine+ 160, firstLine+ 168, firstLine+ 176, firstLine+ 184, firstLine+ 192, firstLine+ 200, firstLine+ 208, firstLine+ 216, firstLine+ 224
                dw firstLine+ 232, firstLine+ 240, firstLine+ 248, firstLine+ 256, firstLine+ 264, firstLine+ 272, firstLine+ 280, firstLine+ 288 
                ;2*nd line
                dw secondLinee, secondLinee+ 40, secondLinee+ 96, secondLinee+ 128, secondLinee+ 160, secondLinee+ 192, secondLinee+ 248, secondLinee+ 288
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
                dw eleventhLine+ 56, eleventhLine+ 64, eleventhLine+ 72, eleventhLine+ 80, eleventhLine+ 88, eleventhLine+ 200, eleventhLine+ 208, eleventhLine+ 216, eleventhLine+ 224, eleventhLine+ 232
                ; 12th line
                dw twelfthLine+ 56, twelfthLine+ 88, twelfthLine+ 200, twelfthLine+ 232
                ; 13th line
                dw thirteenthLine+ 56, fifthLine+ 64, fifthLine+ 72, fifthLine+ 80, thirteenthLine+ 88, thirteenthLine+ 200, thirteenthLine+ 232
                ; 14th line
                dw fourteenthLine+ 56, fourteenthLine+ 88, fourteenthLine+ 200, fourteenthLine+ 232
                ; 15th line
                dw fifteenthLine+ 56, fifteenthLine+ 88, fifteenthLine+ 200, fifteenthLine+ 232
                ;16th line
                dw sixteenthLine+ 56, sixteenthLine+ 88, sixteenthLine+ 200, sixteenthLine+ 232
                ; 17th line
                dw seventeenthLine+ 56, seventeenthLine+ 88, seventeenthLine+ 200, seventeenthLine+ 232
                ; 18th line
                dw eighteenthLine, eighteenthLine+ 8, eighteenthLine+ 16, eighteenthLine+ 24, eighteenthLine+ 32, eighteenthLine+ 40, eighteenthLine+ 48, eighteenthLine+ 56 
                dw eighteenthLine+ 64, eighteenthLine+ 72, eighteenthLine+ 80, eighteenthLine+ 88, eighteenthLine+ 96, eighteenthLine+ 104, eighteenthLine+ 112, eighteenthLine+ 120, eighteenthLine+ 128
                dw eighteenthLine+ 160, eighteenthLine+ 168, eighteenthLine+ 176, eighteenthLine+ 184, eighteenthLine+ 192, eighteenthLine+ 200, eighteenthLine+ 208, eighteenthLine+ 216, eighteenthLine+ 224
                dw eighteenthLine+ 232, eighteenthLine+ 240, eighteenthLine+ 248, eighteenthLine+ 256, eighteenthLine+ 264, eighteenthLine+ 272, eighteenthLine+ 280, eighteenthLine+ 288 
                ; 19th line
                dw nineteenthLine, nineteenthLine+ 32, nineteenthLine+ 56, nineteenthLine+ 128, nineteenthLine+ 160, nineteenthLine+ 232,nineteenthLine+ 256, nineteenthLine+ 288
                ;20th line
                dw twentiethLine, twentiethLine+ 32, twentiethLine+ 56, twentiethLine+ 128, twentiethLine+ 160, twentiethLine+ 232,twentiethLine+ 256, twentiethLine+ 288
                ;21th line
                dw twentiethfirstLine, twentiethfirstLine+ 32, twentiethfirstLine+ 56, twentiethfirstLine+ 128, twentiethfirstLine+ 160, twentiethfirstLine+ 232,twentiethfirstLine+ 256, twentiethfirstLine+ 288
                ;22th line
                dw twentiethtwooLine, twentiethtwooLine+ 32, twentiethtwooLine+ 56, twentiethtwooLine+ 128, twentiethtwooLine+ 160, twentiethtwooLine+ 232,twentiethtwooLine+ 256, twentiethtwooLine+ 288
                ;23th line 
                dw twentieththirdLine, twentieththirdLine+ 32, twentieththirdLine+ 56, twentieththirdLine+ 128, twentieththirdLine+ 160, twentieththirdLine+ 232,twentieththirdLine+ 256, twentieththirdLine+ 288
                ;24th line 
                dw twentiethfourthLine, twentiethfourthLine+ 8, twentiethfourthLine+ 16, twentiethfourthLine+ 24, twentiethfourthLine+ 32, twentiethfourthLine+ 40, twentiethfourthLine+ 48, twentiethfourthLine+ 56 
                dw twentiethfourthLine+ 64, twentiethfourthLine+ 72, twentiethfourthLine+ 80, twentiethfourthLine+ 88, twentiethfourthLine+ 96, twentiethfourthLine+ 104, twentiethfourthLine+ 112, twentiethfourthLine+ 120, twentiethfourthLine+ 128
                dw twentiethfourthLine+ 138, twentiethfourthLine+ 150, twentiethfourthLine+ 160, twentiethfourthLine+ 168, twentiethfourthLine+ 176, twentiethfourthLine+ 184, twentiethfourthLine+ 192, twentiethfourthLine+ 200, twentiethfourthLine+ 208, twentiethfourthLine+ 216, twentiethfourthLine+ 224
                dw twentiethfourthLine+ 232, twentiethfourthLine+ 240, twentiethfourthLine+ 248, twentiethfourthLine+ 256, twentiethfourthLine+ 264, twentiethfourthLine+ 272, twentiethfourthLine+ 280, twentiethfourthLine+ 288   
                

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