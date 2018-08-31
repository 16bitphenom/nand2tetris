// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1 
@SP
AM=M-1
D=M
@R4
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 0 
@SP
AM=M-1
D=M
@R13
M=D
@0 
D=A
@R4
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 1 
@SP
AM=M-1
D=M
@R13
M=D
@1 
D=A
@R4
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

// push constant 2
@2
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

// label MAIN_LOOP_START
(FibonacciSeries$MAIN_LOOP_START)

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

// if-goto COMPUTE_ELEMENT 
@SP
AM=M-1
D=M
@FibonacciSeries$COMPUTE_ELEMENT
D;JNE

// goto END_PROGRAM 
@FibonacciSeries$END_PROGRAM
0;JMP

// label COMPUTE_ELEMENT
(FibonacciSeries$COMPUTE_ELEMENT)

// push that 0
@R4
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push that 1
@R4
D=M
@1
A=D+A
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

// pop that 2 
@SP
AM=M-1
D=M
@R13
M=D
@2 
D=A
@R4
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push pointer 1
@R4
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1 
@SP
AM=M-1
D=M
@R4
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

// goto MAIN_LOOP_START
@FibonacciSeries$MAIN_LOOP_START
0;JMP

// label END_PROGRAM
(FibonacciSeries$END_PROGRAM)

