// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
// addr = SCREEN
// n = 8160
// count = 0
// if KBD > 0 goto BLACK
// if KBD = 0 goto WHITE
// (LOOP)
// if (count - n) >= 0 goto END
// A = addr + count
// BLACK
// RAM[A] = -1
// WHITE
// RAM[A] = 0
// count = count + 1
// LOOP
// END

@8192 // (512*256)/16
D=A
@count
M=D
(OUTTERLOOP)
@index
M=0

(LOOP)
@KBD
D=M
@WHITE
D;JEQ

(BLACK)
@index
D=M
@SCREEN
A=A+D
M=-1
@END
0;JMP

(WHITE)
@index
D=M
@SCREEN
A=A+D
M=0
@END
0;JMP

(END)
@index
MD=M+1
@count
D=M-D
@LOOP
D;JGT
@OUTTERLOOP
D;JEQ
