@100
D=A
@arr
M=D // RAM[arr] = 100

@10
D=A
@n
M=D // RAM[n] = 10

@i
M=0 // RAM[i] = 0

(LOOP)
@i
D=M
@n
D=D-M
@END
D;JEQ

@arr
D=M
@i
A=D+M
M=-1

@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP