//initialize
@256
D=A
@SP
M=D
@1
D=A
@R1
M=D
M=-M
@2
D=A
@R2
M=D
M=-M
@3
D=A
@R3
M=D
M=-M
@4
D=A
@R4
M=D
M=-M
@RET$Sys.init
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(RET$Sys.init)
// function Memory.init 0
(Memory.init)
@0
D=A-1
(Memory.init$START)
@Memory.init$END
D;JLT
@R13
M=D
@SP
D=A
@SP
A=M
M=D
@SP
M=M+1
@R13
D=M
D=D-1
@Memory.init$START
0;JMP
(Memory.init$END)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@SP
AM=M-1
D=M
@16
M=D

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@SP
AM=M-1
D=M
@17
M=D

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@17
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

// push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@17
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
D=A
@R13
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
A=M-1
D=M
@THAT
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@R14
A=M
0;JMP

// function Memory.peek 0
(Memory.peek)
@0
D=A-1
(Memory.peek$START)
@Memory.peek$END
D;JLT
@R13
M=D
@SP
D=A
@SP
A=M
M=D
@SP
M=M+1
@R13
D=M
D=D-1
@Memory.peek$START
0;JMP
(Memory.peek$END)

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// return
@LCL
D=M
@R13
M=D
@5
D=A
@R13
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
A=M-1
D=M
@THAT
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@R14
A=M
0;JMP

// function Memory.poke 0
(Memory.poke)
@0
D=A-1
(Memory.poke$START)
@Memory.poke$END
D;JLT
@R13
M=D
@SP
D=A
@SP
A=M
M=D
@SP
M=M+1
@R13
D=M
D=D-1
@Memory.poke$START
0;JMP
(Memory.poke$END)

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
D=A
@R13
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
A=M-1
D=M
@THAT
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@R14
A=M
0;JMP

// function Memory.alloc 4
(Memory.alloc)
@4
D=A-1
(Memory.alloc$START)
@Memory.alloc$END
D;JLT
@R13
M=D
@SP
D=A
@SP
A=M
M=D
@SP
M=M+1
@R13
D=M
D=D-1
@Memory.alloc$START
0;JMP
(Memory.alloc$END)

// push static 1
@17
D=M
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

// push static 1
@17
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

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// push static 1
@17
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@2
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

// label WHILE_EXP0
(Memory$WHILE_EXP0)

// push static 0
@16
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE0
D;JLT
@SP
A=M-1
M=0
@CONTINUE0
0;JMP
(TRUE0)
@SP
A=M-1
M=-1
(CONTINUE0)

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

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Memory$WHILE_END0
D;JNE

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@SP
AM=M-1
D=M
@R13
M=D
@2
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

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// pop local 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// goto WHILE_EXP0
@Memory$WHILE_EXP0
0;JMP

// label WHILE_END0
(Memory$WHILE_END0)

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

// push static 0
@16
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 3
@SP
AM=M-1
D=M
@R13
M=D
@3
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

// push static 0
@16
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

// push static 0
@16
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// push static 0
@16
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE1
D;JLT
@SP
A=M-1
M=0
@CONTINUE1
0;JMP
(TRUE1)
@SP
A=M-1
M=-1
(CONTINUE1)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Memory$IF_FALSE0
0;JMP

// label IF_TRUE0
(Memory$IF_TRUE0)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@17
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE2
D;JEQ
@SP
A=M-1
M=0
@CONTINUE2
0;JMP
(TRUE2)
@SP
A=M-1
M=-1
(CONTINUE2)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Memory$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Memory$IF_FALSE1
0;JMP

// label IF_TRUE1
(Memory$IF_TRUE1)

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// pop static 1
@SP
AM=M-1
D=M
@17
M=D

// goto IF_END1
@Memory$IF_END1
0;JMP

// label IF_FALSE1
(Memory$IF_FALSE1)

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
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

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// label IF_END1
(Memory$IF_END1)

// goto IF_END0
@Memory$IF_END0
0;JMP

// label IF_FALSE0
(Memory$IF_FALSE0)

// label IF_END0
(Memory$IF_END0)

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@3
D=A
@LCL
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
D=A
@R13
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
A=M-1
D=M
@THAT
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@R14
A=M
0;JMP

// function Memory.deAlloc 1
(Memory.deAlloc)
@1
D=A-1
(Memory.deAlloc$START)
@Memory.deAlloc$END
D;JLT
@R13
M=D
@SP
D=A
@SP
A=M
M=D
@SP
M=M+1
@R13
D=M
D=D-1
@Memory.deAlloc$START
0;JMP
(Memory.deAlloc$END)

// push static 1
@17
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

// label WHILE_EXP1
(Memory$WHILE_EXP1)

// push static 0
@16
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE3
D;JEQ
@SP
A=M-1
M=0
@CONTINUE3
0;JMP
(TRUE3)
@SP
A=M-1
M=-1
(CONTINUE3)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Memory$WHILE_END1
D;JNE

// push static 0
@16
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

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

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

// goto WHILE_EXP1
@Memory$WHILE_EXP1
0;JMP

// label WHILE_END1
(Memory$WHILE_END1)

// push static 0
@16
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

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// push static 0
@16
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R5
D=D+A
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// pop pointer 1
@SP
AM=M-1
D=M
@R4
M=D

// push temp 0
@0
D=A
@R5
A=D+A
D=M
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
D=A
@R13
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
A=M-1
D=M
@THAT
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@R14
A=M
0;JMP

