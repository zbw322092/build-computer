// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// pseudo code:
// sum = 0
// count = 0
// LOOP
// if count >= n goto STOP
// sum = sum + R1
// count = count + 1
// goto LOOP
// STOP
// R2 = sum

@sum
M=0
@count
M=0

(LOOP)
@R0
D=M
@count
D=M-D
@STOP
D;JGE
@R1
D=M
@sum
M=M+D
@count
M=M+1
@LOOP
0;JMP

(STOP)
@sum
D=M
@R2
M=D

(END)
@END
0;JMP