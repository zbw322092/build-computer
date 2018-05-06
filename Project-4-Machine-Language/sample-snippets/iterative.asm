@R0
D=M
@n
M=D // R[n] = R0
@i
M=1 // R[i] = 1
@sum
M=0 // R[sum] = 0

(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JGT // if i > n goto stop

@sum
D=M
@i
D=D+M
@sum
M=D
@i
M=M+1
@LOOP
0;JMP

(STOP)
@sum
D=M
@R1
M=D

(END)
@END
0;JMP