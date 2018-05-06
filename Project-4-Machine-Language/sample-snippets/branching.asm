// Branching
@R1
D=M // D = RAM[1]

@POSITIVE
D;JGT

@R1
M=0 // RAM[1] = 0
@END
0;JMP

(POSITIVE)
@R1
M=1

(END)
@END
0;JMP