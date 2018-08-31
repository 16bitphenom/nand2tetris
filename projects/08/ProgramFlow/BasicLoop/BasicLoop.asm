// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0 
@SP
AM=M-1
D=M
@R13
M=D
@0 
D=A
@LCL
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// label LOOP_START
(BasicLoop$LOOP_START)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0 
@SP
AM=M-1
D=M
@R13
M=D
@0 
D=A
@LCL
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// pop argument 0 
@SP
AM=M-1
D=M
@R13
M=D
@0 
D=A
@ARG
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto LOOP_START 
@SP
AM=M-1
D=M
@BasicLoop$LOOP_START
D;JNE

// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

