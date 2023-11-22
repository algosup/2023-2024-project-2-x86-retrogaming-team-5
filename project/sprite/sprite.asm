org 100h

%define SCREEN_WIDTH 320
%define SCREEN_HEIGHT 200


%define SPRITEW 16
%define SPRITEH 16
section .data

xPos dw 100
xVelocity dw 1
yPos dw 100

spritew dw 16

spriteh dw 16

old_XPOS dw 0

old_YPOS dw 0

blinky      db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x28, 0x0F, 0x0F, 0x28, 0x28, 0x28, 0x28, 0x0f, 0x0f, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00
            db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x28, 0x28, 0x0f, 0x0f, 0x0f, 0x0f, 0x28, 0x28, 0x28, 0x00, 0x00
            db 0x00, 0x09, 0x09, 0x0F, 0x0F, 0x28, 0x28, 0x09, 0x09, 0x0F, 0x0F, 0x28, 0x28, 0x28, 0x00, 0x00
            db 0x00, 0x09, 0x09, 0x0F, 0x0F, 0x28, 0x28, 0x09, 0x09, 0x0F, 0x0F, 0x28, 0x28, 0x28, 0x00, 0x00
            db 0x28, 0x28, 0x0F, 0x0F, 0x28, 0x28, 0x28, 0x28, 0x0F, 0x0F, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00
            db 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00
            db 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00
            db 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00
            db 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00
            db 0x28, 0x28, 0x00, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28, 0x00, 0x28, 0x28, 0x00
            db 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x00

inky        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x01, 0x0F, 0x0F, 0x01, 0x01, 0x01, 0x01, 0x0f, 0x0f, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00
            db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x01, 0x01, 0x0f, 0x0f, 0x0f, 0x0f, 0x01, 0x01, 0x01, 0x00, 0x00
            db 0x00, 0x09, 0x09, 0x0F, 0x0F, 0x01, 0x01, 0x09, 0x09, 0x0F, 0x0F, 0x01, 0x01, 0x01, 0x00, 0x00
            db 0x00, 0x09, 0x09, 0x0F, 0x0F, 0x01, 0x01, 0x09, 0x09, 0x0F, 0x0F, 0x01, 0x01, 0x01, 0x00, 0x00
            db 0x01, 0x01, 0x0F, 0x0F, 0x01, 0x01, 0x01, 0x01, 0x0F, 0x0F, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00
            db 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00
            db 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00
            db 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00
            db 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00
            db 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x00
            db 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00
clyde       db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
            db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
            db 0x00,0x00,0x00,0x00,0x00,0x22,0x22,0x22,0x22,0x00,0x00,0x00,0x00,0x00,0x00,0x00
            db 0x00,0x00,0x00,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x00,0x00,0x00,0x00,0x00
            db 0x00,0x00,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x00,0x00,0x00,0x00
            db 0x00,0x22,0x0f,0x0f,0x22,0x22,0x22,0x22,0x0f,0x0f,0x22,0x22,0x22,0x00,0x00,0x00
            db 0x00,0x0f,0x0f,0x0f,0x0f,0x22,0x22,0x0f,0x0f,0x0f,0x0f,0x22,0x22,0x22,0x00,0x00
            db 0x00,0x28,0x28,0x0f,0x0f,0x22,0x22,0x28,0x28,0x0f,0x0f,0x22,0x22,0x22,0x00,0x00
            db 0x00,0x28,0x28,0x0f,0x0f,0x22,0x22,0x28,0x28,0x0f,0x0f,0x22,0x22,0x22,0x00,0x00
            db 0x22,0x22,0x0f,0x0f,0x22,0x22,0x22,0x22,0x0f,0x0f,0x22,0x22,0x22,0x22,0x22,0x00
            db 0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x00
            db 0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x00
            db 0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x00
            db 0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x00
            db 0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x00
            db 0x22,0x22,0x00,0x22,0x22,0x22,0x00,0x00,0x00,0x22,0x22,0x22,0x00,0x22,0x22,0x00
            db 0x22,0x00,0x00,0x00,0x22,0x22,0x00,0x00,0x00,0x22,0x22,0x00,0x00,0x00,0x22,0x00

pinky       db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x0E, 0x0E, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x0E, 0x0F, 0x0F, 0x0E, 0x0E, 0x0E, 0x0E, 0x0f, 0x0f, 0x0E, 0x0E, 0x0E, 0x00, 0x00, 0x00
            db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x0E, 0x0E, 0x0f, 0x0f, 0x0f, 0x0f, 0x0E, 0x0E, 0x0E, 0x00, 0x00
            db 0x00, 0x09, 0x09, 0x0F, 0x0F, 0x0E, 0x0E, 0x09, 0x09, 0x0F, 0x0F, 0x0E, 0x0E, 0x0E, 0x00, 0x00
            db 0x00, 0x09, 0x09, 0x0F, 0x0F, 0x0E, 0x0E, 0x09, 0x09, 0x0F, 0x0F, 0x0E, 0x0E, 0x0E, 0x00, 0x00
            db 0x0E, 0x0E, 0x0F, 0x0F, 0x0E, 0x0E, 0x0E, 0x0E, 0x0F, 0x0F, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x00
            db 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x00
            db 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x00
            db 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x00
            db 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x00
            db 0x0E, 0x0E, 0x00, 0x0E, 0x0E, 0x0E, 0x00, 0x00, 0x00, 0x0E, 0x0E, 0x0E, 0x00, 0x0E, 0x0E, 0x00
            db 0x0E, 0x00, 0x00, 0x00, 0x0E, 0x0E, 0x00, 0x00, 0x00, 0x0E, 0x0E, 0x00, 0x00, 0x00, 0x0E, 0x00
pacmanOpen db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x0f, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x5c, 0x5c, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x5c, 0x5c, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x5c, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2b, 0x2b, 0x2b, 0x2c, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
           db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

pacmanClose db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x0f, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00
            db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00
            db 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x5c, 0x5c, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2b, 0x2b, 0x2b, 0x2c, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

cerise      db 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x0A, 0x0A, 0x0A, 0x02, 0x00, 0x02, 0x0A, 0x0A, 0x02, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x0A, 0x02, 0x02, 0x0A, 0x0A, 0x02, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x04, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x04, 0x28, 0x28, 0x28, 0x28, 0x28, 0x04, 0x28, 0x28, 0x28, 0x28, 0x04, 0x00, 0x00
            db 0x00, 0x00, 0x04, 0x28, 0x0C, 0x28, 0x28, 0x04, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x04, 0x00
            db 0x00, 0x00, 0x04, 0x28, 0x0C, 0x28, 0x28, 0x04, 0x28, 0x0C, 0x28, 0x28, 0x28, 0x28, 0x04, 0x00
            db 0x00, 0x00, 0x04, 0x28, 0x28, 0x0C, 0x28, 0x04, 0x28, 0x0C, 0x28, 0x28, 0x28, 0x28, 0x04, 0x00
            db 0x00, 0x00, 0x00, 0x04, 0x28, 0x28, 0x28, 0x04, 0x28, 0x28, 0x0C, 0x28, 0x28, 0x28, 0x04, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x28, 0x28, 0x28, 0x28, 0x04, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 
fraise      db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x02, 0x0A, 0x02, 0x0A, 0x02, 0x0A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x04, 0x28, 0x02, 0x28, 0x02, 0x28, 0x02, 0x28, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x04, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x04, 0x04, 0x28, 0x28, 0x28, 0x04, 0x28, 0x28, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x04, 0x28, 0x28, 0x04, 0x28, 0x28, 0x28, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x04, 0x28, 0x28, 0x28, 0x28, 0x04, 0x28, 0x28, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x04, 0x28, 0x04, 0x28, 0x28, 0x28, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x28, 0x28, 0x28, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

orange      db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x02, 0x30, 0x30, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x30, 0x30, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2A, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2A, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2A, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2B, 0x42, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2A, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2B, 0x42, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2A, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2B, 0x2B, 0x42, 0x2B, 0x2B, 0x2B, 0x2B, 0x2A, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2A, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00

pomme       db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x28, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x08, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x08, 0x28, 0x28, 0x0f, 0x0f, 0x28, 0x28, 0x28, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x08, 0x28, 0x28, 0x0f, 0x0f, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x08, 0x28, 0x28, 0x0f, 0x0f, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x08, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x08, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x04, 0x28, 0x28, 0x28, 0x28, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

melon       db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x2F, 0x02, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2F, 0x07, 0x02, 0x2F, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x2F, 0x2F, 0x02, 0x2F, 0x07, 0x02, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2F, 0x2F, 0x02, 0x2F, 0x2F, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2F, 0x02, 0x07, 0x2F, 0x02, 0x07, 0x02, 0x2F, 0x02, 0x2F, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2F, 0x2F, 0x02, 0x2F, 0x2F, 0x2F, 0x07, 0x02, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2F, 0x2F, 0x2F, 0x02, 0x07, 0x2F, 0x02, 0x07, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x2F, 0x2F, 0x2F, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2F, 0x2F, 0x07, 0x02, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x2F, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

galaxian    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x20, 0x20, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x20, 0x20, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x20, 0x20, 0x0E, 0x28, 0x28, 0x28, 0x28, 0x28, 0x0E, 0x20, 0x20, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x20, 0x20, 0x0E, 0x28, 0x0E, 0x28, 0x0E, 0x28, 0x0E, 0x20, 0x20, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x20, 0x20, 0x0E, 0x0E, 0x28, 0x28, 0x28, 0x0E, 0x0E, 0x20, 0x20, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x20, 0x20, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x0E, 0x0E, 0x0E, 0x20, 0x20, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x0E, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
pLeftOpen   db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x0f, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x5c, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x5c, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x00, 0x5c, 0x5c, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x5c, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x2c, 0x2b, 0x2b, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

pLeftClose  db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x0f, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x5c, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2b, 0x2b, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

pUpClose    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x00, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x5c, 0x5c, 0x2c, 0x2c, 0x2c, 0x00, 0x2c, 0x5c, 0x5c, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x2c, 0x2c, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x2b, 0x2c, 0x0f, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2b, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x2b, 0x2b, 0x2b, 0x2b, 0x2b, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

pUpOpen     db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x5c, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x5c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x5c, 0x2c, 0x5c, 0x00, 0x00, 0x00
            db 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x5c, 0x00, 0x00, 0x00, 0x5c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00
            db 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x2c, 0x2c, 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x2b, 0x2c, 0x0f, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00
            db 0x00, 0x00, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x2b, 0x2b, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2c, 0x2b, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2b, 0x2b, 0x2b, 0x2b, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00



section .bss
keyPressed resb 1  ; Reserve a byte for the state of the key
section .text
start:
; Initializing video mode
    mov ah, 00h
    mov al, 13h
    int 10h
    
; Main game loop

       
    
    gameloop:

        call clear_old_sprite
        call draw_sprite
        call read_character_key_was_pressed
        
        ; Delay to slow down animation
        mov cx, 64000
       waitloop:
       loop waitloop
        jmp gameloop
 ; End of game, return to text mode
    mov ax, 03h
    int 10h
    mov ax, 4C00h
    int 21h
; Function to read key pressed
read_character_key_was_pressed:
    mov ah, 00h
    int 16h
    cmp ah, 0E0h
    jne handle_input
    int 16h

handle_input:
    cmp ah, 4Dh   ; Right Key ;4DH                          ; Down key ;50h
    je move_right
    cmp ah, 4Bh    ; Left Key ;4BH   
    je move_left
    cmp ah, 48h   ; Up key ;48H        
    je move_up
    cmp ah, 50h  ; Down key ;50h
    je move_down
    ret

    ret

clear_old_sprite:
   
; Clear sprite at old position
    mov ax, 0A000h
    mov es, ax
    mov ax, [old_YPOS] 
    neg word [xVelocity]  ; Y * screen width
    add ax, [old_XPOS]  ; + X
    mov di, ax         ; DI = starting address for erasure
    mov cx, SPRITEH    ; Sprite height
.clear_line:
    push cx
    mov cx, SPRITEW    ; Sprite width
    mov al, 0          ; Background color for erasing
    rep stosb          ; Clear pixels with background color
    pop cx
    add di, 320 - SPRITEW  ; Move to next line for deletion
    loop .clear_line
    ret

move_right:
    call boucle_changeright
    mov bx, [xPos]
    add bx, 1
    cmp bx, SCREEN_WIDTH - SPRITEW 
    jae .skip_move_right
    mov [xPos], bx
.skip_move_right:
    ret
move_left:
    call boucle_changeleft
    mov bx, [xPos]
    sub bx, 1
    cmp bx, 0
    jbe .skip_move_left
    mov [xPos], bx
.skip_move_left:
    ret

move_up:
    mov bx, [yPos]
    sub bx, 1
    cmp bx, 0
    jbe .skip_move_up
    mov [yPos], bx
.skip_move_up:
    ret

move_down:
    mov bx, [yPos]
    add bx, 1
    cmp bx, SCREEN_HEIGHT - SPRITEH 
    jae .skip_move_down
    mov [yPos], bx
.skip_move_down:
    ret


   boucle_changeright:
        cmp si, pacmanClose
        jne .pacmanopnd
        jmp .pacmanclosd

    .pacmanopnd:
       mov si, pacmanOpen
       ret
     .pacmanclosd:
        mov si, pacmanClose
        ret

    boucle_changeleft:
        cmp si, pLeftClose
        jne .pacmanopend
        jmp .pacmanclosed

    .pacmanopend:
       mov si, pLeftOpen
       ret
     .pacmanclosed:
        mov si, pLeftClose
        ret


; Function to clear the screen
draw_sprite:
    
; Before drawing the sprite, save the current position
    mov ax, [xPos]
    mov [old_XPOS], ax  ; Save old position
    mov ax, [yPos]
    mov [old_YPOS], ax  ; Save old Y position
    ; Resets the graphic segment
    mov ax, 0A000h
    mov es, ax
    ; Calculates the address on the screen where the sprite will be drawn
    mov ax, [yPos]
    imul ax, 320      ; Multiply yPos by the screen width to get the offset
    add ax, [xPos]    ; Add xPos to the offset
    mov di, ax         ; DI = starting address for the drawing
    ; Gets the address of the sprite to draw
 ; Set the height of the sprite
    mov cx, SPRITEH
.draw_line:
    ; Saving CX because it is modified by REP MOVSB
    push cx
    ; Sets the sprite width for the current row
    mov cx, SPRITEW
    rep movsb; Draw the sprite line on the screen
    ; Restores CX for next line
    pop cx
    ; Adjusts DI for the next line taking into account the screen width offset
    add di, 320 - SPRITEW
    loop .draw_line; Repeat the drawing for each line of the sprite
    ret