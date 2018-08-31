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
// function Array.new 0
(Array.new)
@0
D=A-1
(Array.new$START)
@Array.new$END
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
@Array.new$START
0;JMP
(Array.new$END)

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

// call Memory.alloc 1
@RET0$Memory.alloc
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.alloc
0;JMP
(RET0$Memory.alloc)

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

// function Array.dispose 0
(Array.dispose)
@0
D=A-1
(Array.dispose$START)
@Array.dispose$END
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
@Array.dispose$START
0;JMP
(Array.dispose$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1
@RET1$Memory.deAlloc
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.deAlloc
0;JMP
(RET1$Memory.deAlloc)

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

// function Keyboard.init 0
(Keyboard.init)
@0
D=A-1
(Keyboard.init$START)
@Keyboard.init$END
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
@Keyboard.init$START
0;JMP
(Keyboard.init$END)

// push constant 24576
@24576
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

// function Keyboard.keyPressed 0
(Keyboard.keyPressed)
@0
D=A-1
(Keyboard.keyPressed$START)
@Keyboard.keyPressed$END
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
@Keyboard.keyPressed$START
0;JMP
(Keyboard.keyPressed$END)

// push static 0
@16
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

// function Keyboard.readChar 1
(Keyboard.readChar)
@1
D=A-1
(Keyboard.readChar$START)
@Keyboard.readChar$END
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
@Keyboard.readChar$START
0;JMP
(Keyboard.readChar$END)

// label WHILE_EXP0
(Keyboard$WHILE_EXP0)

// push static 0
@16
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
@TRUE0
D;JEQ
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

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Keyboard$WHILE_END0
D;JNE

// goto WHILE_EXP0
@Keyboard$WHILE_EXP0
0;JMP

// label WHILE_END0
(Keyboard$WHILE_END0)

// push static 0
@16
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

// label WHILE_EXP1
(Keyboard$WHILE_EXP1)

// push static 0
@16
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
@TRUE1
D;JEQ
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
@Keyboard$WHILE_END1
D;JNE

// goto WHILE_EXP1
@Keyboard$WHILE_EXP1
0;JMP

// label WHILE_END1
(Keyboard$WHILE_END1)

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

// push constant 129
@129
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

// not
@SP
A=M-1
M=!M

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

// push constant 128
@128
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

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Keyboard$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Keyboard$IF_FALSE0
0;JMP

// label IF_TRUE0
(Keyboard$IF_TRUE0)

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

// call Output.printChar 1
@RET2$Output.printChar
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(RET2$Output.printChar)

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

// goto IF_END0
@Keyboard$IF_END0
0;JMP

// label IF_FALSE0
(Keyboard$IF_FALSE0)

// label IF_END0
(Keyboard$IF_END0)

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

// function Keyboard.readLine 3
(Keyboard.readLine)
@3
D=A-1
(Keyboard.readLine$START)
@Keyboard.readLine$END
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
@Keyboard.readLine$START
0;JMP
(Keyboard.readLine$END)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

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

// call Output.printString 1
@RET3$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET3$Output.printString)

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

// call String.length 1
@RET4$String.length
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.length
0;JMP
(RET4$String.length)

// call String.new 1
@RET5$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET5$String.new)

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

// label WHILE_EXP2
(Keyboard$WHILE_EXP2)

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

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END2
@SP
AM=M-1
D=M
@Keyboard$WHILE_END2
D;JNE

// call Keyboard.readChar 0
@RET6$Keyboard.readChar
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.readChar
0;JMP
(RET6$Keyboard.readChar)

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

// push constant 128
@128
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
@TRUE4
D;JEQ
@SP
A=M-1
M=0
@CONTINUE4
0;JMP
(TRUE4)
@SP
A=M-1
M=-1
(CONTINUE4)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Keyboard$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Keyboard$IF_FALSE1
0;JMP

// label IF_TRUE1
(Keyboard$IF_TRUE1)

// call Output.println 0
@RET7$Output.println
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.println
0;JMP
(RET7$Output.println)

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

// push constant 0
@0
D=A
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

// goto IF_END1
@Keyboard$IF_END1
0;JMP

// label IF_FALSE1
(Keyboard$IF_FALSE1)

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

// push constant 129
@129
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
@TRUE5
D;JEQ
@SP
A=M-1
M=0
@CONTINUE5
0;JMP
(TRUE5)
@SP
A=M-1
M=-1
(CONTINUE5)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Keyboard$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Keyboard$IF_FALSE2
0;JMP

// label IF_TRUE2
(Keyboard$IF_TRUE2)

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

// call String.eraseLastChar 1
@RET8$String.eraseLastChar
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.eraseLastChar
0;JMP
(RET8$String.eraseLastChar)

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

// call Output.backSpace 0
@RET9$Output.backSpace
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.backSpace
0;JMP
(RET9$Output.backSpace)

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

// goto IF_END2
@Keyboard$IF_END2
0;JMP

// label IF_FALSE2
(Keyboard$IF_FALSE2)

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

// call String.appendChar 2
@RET10$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET10$String.appendChar)

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

// label IF_END2
(Keyboard$IF_END2)

// label IF_END1
(Keyboard$IF_END1)

// goto WHILE_EXP2
@Keyboard$WHILE_EXP2
0;JMP

// label WHILE_END2
(Keyboard$WHILE_END2)

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

// function Keyboard.readInt 1
(Keyboard.readInt)
@1
D=A-1
(Keyboard.readInt$START)
@Keyboard.readInt$END
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
@Keyboard.readInt$START
0;JMP
(Keyboard.readInt$END)

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

// call Keyboard.readLine 1
@RET11$Keyboard.readLine
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.readLine
0;JMP
(RET11$Keyboard.readLine)

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

// call String.intValue 1
@RET12$String.intValue
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.intValue
0;JMP
(RET12$String.intValue)

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

// function Main.main 1
(Main.main)
@1
D=A-1
(Main.main$START)
@Main.main$END
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
@Main.main$START
0;JMP
(Main.main$END)

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
@17
M=D

// push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET13$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET13$String.new)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET14$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET14$String.appendChar)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET15$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET15$String.appendChar)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET16$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET16$String.appendChar)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET17$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET17$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET18$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET18$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET19$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET19$String.appendChar)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET20$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET20$String.appendChar)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET21$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET21$String.appendChar)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET22$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET22$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET23$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET23$String.appendChar)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET24$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET24$String.appendChar)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET25$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET25$String.appendChar)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET26$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET26$String.appendChar)

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET27$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET27$String.appendChar)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET28$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET28$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET29$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET29$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET30$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET30$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET31$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET31$String.appendChar)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET32$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET32$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET33$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET33$String.appendChar)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET34$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET34$String.appendChar)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET35$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET35$String.appendChar)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET36$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET36$String.appendChar)

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET37$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET37$String.appendChar)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET38$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET38$String.appendChar)

// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET39$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET39$String.appendChar)

// call Keyboard.readInt 1
@RET40$Keyboard.readInt
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.readInt
0;JMP
(RET40$Keyboard.readInt)

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

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Main.towerOfHanoi 4
@RET41$Main.towerOfHanoi
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.towerOfHanoi
0;JMP
(RET41$Main.towerOfHanoi)

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

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET42$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET42$String.new)

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET43$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET43$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET44$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET44$String.appendChar)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET45$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET45$String.appendChar)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET46$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET46$String.appendChar)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET47$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET47$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET48$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET48$String.appendChar)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET49$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET49$String.appendChar)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET50$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET50$String.appendChar)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET51$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET51$String.appendChar)

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET52$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET52$String.appendChar)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET53$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET53$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET54$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET54$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET55$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET55$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET56$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET56$String.appendChar)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET57$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET57$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET58$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET58$String.appendChar)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET59$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET59$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET60$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET60$String.appendChar)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET61$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET61$String.appendChar)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET62$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET62$String.appendChar)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET63$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET63$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET64$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET64$String.appendChar)

// push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET65$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET65$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET66$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET66$String.appendChar)

// call Output.printString 1
@RET67$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET67$Output.printString)

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

// push static 0
@17
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printInt 1
@RET68$Output.printInt
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printInt
0;JMP
(RET68$Output.printInt)

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

// call Output.println 0
@RET69$Output.println
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.println
0;JMP
(RET69$Output.println)

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

// function Main.towerOfHanoi 0
(Main.towerOfHanoi)
@0
D=A-1
(Main.towerOfHanoi$START)
@Main.towerOfHanoi$END
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
@Main.towerOfHanoi$START
0;JMP
(Main.towerOfHanoi$END)

// push static 0
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

// pop static 0
@SP
AM=M-1
D=M
@17
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

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE6
D;JEQ
@SP
A=M-1
M=0
@CONTINUE6
0;JMP
(TRUE6)
@SP
A=M-1
M=-1
(CONTINUE6)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Main$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Main$IF_FALSE0
0;JMP

// label IF_TRUE0
(Main$IF_TRUE0)

// push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET70$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET70$String.new)

// push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET71$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET71$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET72$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET72$String.appendChar)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET73$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET73$String.appendChar)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET74$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET74$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET75$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET75$String.appendChar)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET76$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET76$String.appendChar)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET77$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET77$String.appendChar)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET78$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET78$String.appendChar)

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET79$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET79$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET80$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET80$String.appendChar)

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET81$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET81$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET82$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET82$String.appendChar)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET83$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET83$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET84$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET84$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET85$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET85$String.appendChar)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET86$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET86$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET87$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET87$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET88$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET88$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET89$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET89$String.appendChar)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET90$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET90$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET91$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET91$String.appendChar)

// call Output.printString 1
@RET92$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET92$Output.printString)

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

// call Output.printChar 1
@RET93$Output.printChar
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(RET93$Output.printChar)

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

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET94$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET94$String.new)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET95$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET95$String.appendChar)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET96$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET96$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET97$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET97$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET98$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET98$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET99$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET99$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET100$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET100$String.appendChar)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET101$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET101$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET102$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET102$String.appendChar)

// call Output.printString 1
@RET103$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET103$Output.printString)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printChar 1
@RET104$Output.printChar
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(RET104$Output.printChar)

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

// call Output.println 0
@RET105$Output.println
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.println
0;JMP
(RET105$Output.println)

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

// goto IF_END0
@Main$IF_END0
0;JMP

// label IF_FALSE0
(Main$IF_FALSE0)

// label IF_END0
(Main$IF_END0)

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Main.towerOfHanoi 4
@RET106$Main.towerOfHanoi
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.towerOfHanoi
0;JMP
(RET106$Main.towerOfHanoi)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET107$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET107$String.new)

// push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET108$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET108$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET109$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET109$String.appendChar)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET110$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET110$String.appendChar)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET111$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET111$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET112$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET112$String.appendChar)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET113$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET113$String.appendChar)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET114$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET114$String.appendChar)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET115$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET115$String.appendChar)

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET116$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET116$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET117$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET117$String.appendChar)

// call Output.printString 1
@RET118$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET118$Output.printString)

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

// call Output.printInt 1
@RET119$Output.printInt
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printInt
0;JMP
(RET119$Output.printInt)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET120$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET120$String.new)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET121$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET121$String.appendChar)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET122$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET122$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET123$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET123$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET124$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET124$String.appendChar)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET125$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET125$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET126$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET126$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET127$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET127$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET128$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET128$String.appendChar)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET129$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET129$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET130$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET130$String.appendChar)

// call Output.printString 1
@RET131$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET131$Output.printString)

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

// call Output.printChar 1
@RET132$Output.printChar
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(RET132$Output.printChar)

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

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET133$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET133$String.new)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET134$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET134$String.appendChar)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET135$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET135$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET136$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET136$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET137$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET137$String.appendChar)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET138$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET138$String.appendChar)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET139$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET139$String.appendChar)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET140$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET140$String.appendChar)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET141$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET141$String.appendChar)

// call Output.printString 1
@RET142$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET142$Output.printString)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printChar 1
@RET143$Output.printChar
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(RET143$Output.printChar)

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

// call Output.println 0
@RET144$Output.println
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.println
0;JMP
(RET144$Output.println)

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// call Main.towerOfHanoi 4
@RET145$Main.towerOfHanoi
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.towerOfHanoi
0;JMP
(RET145$Main.towerOfHanoi)

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

// function Math.init 0
(Math.init)
@0
D=A-1
(Math.init$START)
@Math.init$END
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
@Math.init$START
0;JMP
(Math.init$END)

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@RET146$Array.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Array.new
0;JMP
(RET146$Array.new)

// pop static 0
@SP
AM=M-1
D=M
@18
M=D

// push static 0
@18
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
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
@18
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

// push constant 2
@2
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
@18
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 4
@4
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
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

// push constant 8
@8
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// push constant 16
@16
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 5
@5
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

// push constant 32
@32
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
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

// push constant 64
@64
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
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

// push constant 128
@128
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
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

// push constant 256
@256
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 9
@9
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

// push constant 512
@512
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
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

// push constant 1024
@1024
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
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

// push constant 2048
@2048
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
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

// push constant 4096
@4096
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 13
@13
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

// push constant 8192
@8192
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
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

// push constant 16384
@16384
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
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
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

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16384
@16384
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

// function Math.abs 0
(Math.abs)
@0
D=A-1
(Math.abs$START)
@Math.abs$END
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
@Math.abs$START
0;JMP
(Math.abs$END)

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

// push constant 0
@0
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
@TRUE7
D;JLT
@SP
A=M-1
M=0
@CONTINUE7
0;JMP
(TRUE7)
@SP
A=M-1
M=-1
(CONTINUE7)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Math$IF_FALSE0
0;JMP

// label IF_TRUE0
(Math$IF_TRUE0)

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

// neg
@SP
A=M-1
M=-M

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

// goto IF_END0
@Math$IF_END0
0;JMP

// label IF_FALSE0
(Math$IF_FALSE0)

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

// label IF_END0
(Math$IF_END0)

// function Math.multiply 3
(Math.multiply)
@3
D=A-1
(Math.multiply$START)
@Math.multiply$END
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
@Math.multiply$START
0;JMP
(Math.multiply$END)

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

// push constant 0
@0
D=A
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
(Math$WHILE_EXP0)

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

// push constant 16
@16
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
@TRUE8
D;JLT
@SP
A=M-1
M=0
@CONTINUE8
0;JMP
(TRUE8)
@SP
A=M-1
M=-1
(CONTINUE8)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math$WHILE_END0
D;JNE

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

// call Math.bit 2
@RET147$Math.bit
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.bit
0;JMP
(RET147$Math.bit)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Math$IF_FALSE1
0;JMP

// label IF_TRUE1
(Math$IF_TRUE1)

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

// goto IF_END1
@Math$IF_END1
0;JMP

// label IF_FALSE1
(Math$IF_FALSE1)

// label IF_END1
(Math$IF_END1)

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

// goto WHILE_EXP0
@Math$WHILE_EXP0
0;JMP

// label WHILE_END0
(Math$WHILE_END0)

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

// function Math.divide 3
(Math.divide)
@3
D=A-1
(Math.divide$START)
@Math.divide$END
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
@Math.divide$START
0;JMP
(Math.divide$END)

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

// push constant 0
@0
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
@TRUE9
D;JLT
@SP
A=M-1
M=0
@CONTINUE9
0;JMP
(TRUE9)
@SP
A=M-1
M=-1
(CONTINUE9)

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

// push constant 0
@0
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
@TRUE10
D;JLT
@SP
A=M-1
M=0
@CONTINUE10
0;JMP
(TRUE10)
@SP
A=M-1
M=-1
(CONTINUE10)

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE11
D;JEQ
@SP
A=M-1
M=0
@CONTINUE11
0;JMP
(TRUE11)
@SP
A=M-1
M=-1
(CONTINUE11)

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

// call Math.abs 1
@RET148$Math.abs
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.abs
0;JMP
(RET148$Math.abs)

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

// call Math.abs 1
@RET149$Math.abs
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.abs
0;JMP
(RET149$Math.abs)

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE12
D;JGT
@SP
A=M-1
M=0
@CONTINUE12
0;JMP
(TRUE12)
@SP
A=M-1
M=-1
(CONTINUE12)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Math$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Math$IF_FALSE2
0;JMP

// label IF_TRUE2
(Math$IF_TRUE2)

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

// goto IF_END2
@Math$IF_END2
0;JMP

// label IF_FALSE2
(Math$IF_FALSE2)

// label IF_END2
(Math$IF_END2)

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

// push constant 16384
@16384
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
@TRUE13
D;JLT
@SP
A=M-1
M=0
@CONTINUE13
0;JMP
(TRUE13)
@SP
A=M-1
M=-1
(CONTINUE13)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Math$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Math$IF_FALSE3
0;JMP

// label IF_TRUE3
(Math$IF_TRUE3)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Math.divide 2
@RET150$Math.divide
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(RET150$Math.divide)

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

// goto IF_END3
@Math$IF_END3
0;JMP

// label IF_FALSE3
(Math$IF_FALSE3)

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

// label IF_END3
(Math$IF_END3)

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

// call Math.multiply 2
@RET151$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET151$Math.multiply)

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

// call Math.multiply 2
@RET152$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET152$Math.multiply)

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE14
D;JLT
@SP
A=M-1
M=0
@CONTINUE14
0;JMP
(TRUE14)
@SP
A=M-1
M=-1
(CONTINUE14)

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Math$IF_TRUE4
D;JNE

// goto IF_FALSE4
@Math$IF_FALSE4
0;JMP

// label IF_TRUE4
(Math$IF_TRUE4)

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

// goto IF_END4
@Math$IF_END4
0;JMP

// label IF_FALSE4
(Math$IF_FALSE4)

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

// label IF_END4
(Math$IF_END4)

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

// if-goto IF_TRUE5
@SP
AM=M-1
D=M
@Math$IF_TRUE5
D;JNE

// goto IF_FALSE5
@Math$IF_FALSE5
0;JMP

// label IF_TRUE5
(Math$IF_TRUE5)

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

// goto IF_END5
@Math$IF_END5
0;JMP

// label IF_FALSE5
(Math$IF_FALSE5)

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

// neg
@SP
A=M-1
M=-M

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

// label IF_END5
(Math$IF_END5)

// function Math.sqrt 4
(Math.sqrt)
@4
D=A-1
(Math.sqrt$START)
@Math.sqrt$END
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
@Math.sqrt$START
0;JMP
(Math.sqrt$END)

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

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label WHILE_EXP1
(Math$WHILE_EXP1)

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

// push constant 0
@0
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
@TRUE15
D;JLT
@SP
A=M-1
M=0
@CONTINUE15
0;JMP
(TRUE15)
@SP
A=M-1
M=-1
(CONTINUE15)

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
@Math$WHILE_END1
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

// push static 0
@18
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// call Math.multiply 2
@RET153$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET153$Math.multiply)

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE16
D;JGT
@SP
A=M-1
M=0
@CONTINUE16
0;JMP
(TRUE16)
@SP
A=M-1
M=-1
(CONTINUE16)

// not
@SP
A=M-1
M=!M

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE17
D;JGT
@SP
A=M-1
M=0
@CONTINUE17
0;JMP
(TRUE17)
@SP
A=M-1
M=-1
(CONTINUE17)

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@Math$IF_TRUE6
D;JNE

// goto IF_FALSE6
@Math$IF_FALSE6
0;JMP

// label IF_TRUE6
(Math$IF_TRUE6)

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

// goto IF_END6
@Math$IF_END6
0;JMP

// label IF_FALSE6
(Math$IF_FALSE6)

// label IF_END6
(Math$IF_END6)

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

// goto WHILE_EXP1
@Math$WHILE_EXP1
0;JMP

// label WHILE_END1
(Math$WHILE_END1)

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

// function Math.max 0
(Math.max)
@0
D=A-1
(Math.max$START)
@Math.max$END
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
@Math.max$START
0;JMP
(Math.max$END)

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE18
D;JGT
@SP
A=M-1
M=0
@CONTINUE18
0;JMP
(TRUE18)
@SP
A=M-1
M=-1
(CONTINUE18)

// if-goto IF_TRUE7
@SP
AM=M-1
D=M
@Math$IF_TRUE7
D;JNE

// goto IF_FALSE7
@Math$IF_FALSE7
0;JMP

// label IF_TRUE7
(Math$IF_TRUE7)

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

// goto IF_END7
@Math$IF_END7
0;JMP

// label IF_FALSE7
(Math$IF_FALSE7)

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

// label IF_END7
(Math$IF_END7)

// function Math.min 0
(Math.min)
@0
D=A-1
(Math.min$START)
@Math.min$END
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
@Math.min$START
0;JMP
(Math.min$END)

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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE19
D;JLT
@SP
A=M-1
M=0
@CONTINUE19
0;JMP
(TRUE19)
@SP
A=M-1
M=-1
(CONTINUE19)

// if-goto IF_TRUE8
@SP
AM=M-1
D=M
@Math$IF_TRUE8
D;JNE

// goto IF_FALSE8
@Math$IF_FALSE8
0;JMP

// label IF_TRUE8
(Math$IF_TRUE8)

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

// goto IF_END8
@Math$IF_END8
0;JMP

// label IF_FALSE8
(Math$IF_FALSE8)

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

// label IF_END8
(Math$IF_END8)

// function Math.pow 2
(Math.pow)
@2
D=A-1
(Math.pow$START)
@Math.pow$END
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
@Math.pow$START
0;JMP
(Math.pow$END)

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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label WHILE_EXP2
(Math$WHILE_EXP2)

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE20
D;JGT
@SP
A=M-1
M=0
@CONTINUE20
0;JMP
(TRUE20)
@SP
A=M-1
M=-1
(CONTINUE20)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END2
@SP
AM=M-1
D=M
@Math$WHILE_END2
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

// call Math.multiply 2
@RET154$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET154$Math.multiply)

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

// goto WHILE_EXP2
@Math$WHILE_EXP2
0;JMP

// label WHILE_END2
(Math$WHILE_END2)

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

// function Math.bit 0
(Math.bit)
@0
D=A-1
(Math.bit$START)
@Math.bit$END
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
@Math.bit$START
0;JMP
(Math.bit$END)

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

// push static 0
@18
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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
@TRUE21
D;JEQ
@SP
A=M-1
M=0
@CONTINUE21
0;JMP
(TRUE21)
@SP
A=M-1
M=-1
(CONTINUE21)

// not
@SP
A=M-1
M=!M

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

// function Math.mod 0
(Math.mod)
@0
D=A-1
(Math.mod$START)
@Math.mod$END
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
@Math.mod$START
0;JMP
(Math.mod$END)

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

// call Math.divide 2
@RET155$Math.divide
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(RET155$Math.divide)

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

// call Math.multiply 2
@RET156$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET156$Math.multiply)

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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

// function Math.twoToThe 0
(Math.twoToThe)
@0
D=A-1
(Math.twoToThe$START)
@Math.twoToThe$END
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
@Math.twoToThe$START
0;JMP
(Math.twoToThe$END)

// push static 0
@18
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
@19
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
@20
M=D

// push static 0
@19
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@20
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
@19
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@20
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
@19
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
@19
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
@20
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
@20
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
@20
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
@19
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
@TRUE22
D;JLT
@SP
A=M-1
M=0
@CONTINUE22
0;JMP
(TRUE22)
@SP
A=M-1
M=-1
(CONTINUE22)

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
@19
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
@19
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
@19
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
@19
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
@19
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
@19
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
@TRUE23
D;JLT
@SP
A=M-1
M=0
@CONTINUE23
0;JMP
(TRUE23)
@SP
A=M-1
M=-1
(CONTINUE23)

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
@20
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
@TRUE24
D;JEQ
@SP
A=M-1
M=0
@CONTINUE24
0;JMP
(TRUE24)
@SP
A=M-1
M=-1
(CONTINUE24)

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
@19
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
@20
M=D

// goto IF_END1
@Memory$IF_END1
0;JMP

// label IF_FALSE1
(Memory$IF_FALSE1)

// push static 0
@19
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
@19
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
@19
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
@20
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
@19
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
@TRUE25
D;JEQ
@SP
A=M-1
M=0
@CONTINUE25
0;JMP
(TRUE25)
@SP
A=M-1
M=-1
(CONTINUE25)

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
@19
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
@19
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
@19
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

// function Output.init 0
(Output.init)
@0
D=A-1
(Output.init$START)
@Output.init$END
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
@Output.init$START
0;JMP
(Output.init$END)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 2
@SP
AM=M-1
D=M
@21
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 3
@SP
AM=M-1
D=M
@22
M=D

// push constant 16384
@16384
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
@23
M=D

// call Output.initMap 0
@RET157$Output.initMap
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.initMap
0;JMP
(RET157$Output.initMap)

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

// function Output.initMap 1
(Output.initMap)
@1
D=A-1
(Output.initMap$START)
@Output.initMap$END
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
@Output.initMap$START
0;JMP
(Output.initMap$END)

// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@RET158$Array.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Array.new
0;JMP
(RET158$Array.new)

// pop static 0
@SP
AM=M-1
D=M
@24
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET159$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET159$Output.create)

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

// push constant 32
@32
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@RET160$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET160$Output.create)

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

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET161$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET161$Output.create)

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

// push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 20
@20
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET162$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET162$Output.create)

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

// push constant 35
@35
D=A
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

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET163$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET163$Output.create)

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

// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// call Output.create 12
@RET164$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET164$Output.create)

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

// push constant 37
@37
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET165$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET165$Output.create)

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

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET166$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET166$Output.create)

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

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET167$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET167$Output.create)

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

// push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET168$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET168$Output.create)

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

// push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET169$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET169$Output.create)

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

// push constant 42
@42
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@RET170$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET170$Output.create)

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

// push constant 43
@43
D=A
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

// push constant 0
@0
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@RET171$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET171$Output.create)

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

// push constant 44
@44
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// call Output.create 12
@RET172$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET172$Output.create)

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

// push constant 45
@45
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@RET173$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET173$Output.create)

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

// push constant 46
@46
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET174$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET174$Output.create)

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

// push constant 47
@47
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@RET175$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET175$Output.create)

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

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET176$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET176$Output.create)

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

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET177$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET177$Output.create)

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

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET178$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET178$Output.create)

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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET179$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET179$Output.create)

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

// push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET180$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET180$Output.create)

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

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET181$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET181$Output.create)

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

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET182$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET182$Output.create)

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

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET183$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET183$Output.create)

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

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET184$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET184$Output.create)

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

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET185$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET185$Output.create)

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

// push constant 58
@58
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@RET186$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET186$Output.create)

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

// push constant 59
@59
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET187$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET187$Output.create)

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

// push constant 60
@60
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET188$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET188$Output.create)

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

// push constant 61
@61
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET189$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET189$Output.create)

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

// push constant 62
@62
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET190$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET190$Output.create)

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

// push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET191$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET191$Output.create)

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

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET192$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET192$Output.create)

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

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET193$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET193$Output.create)

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

// push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET194$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET194$Output.create)

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

// push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET195$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET195$Output.create)

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

// push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET196$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET196$Output.create)

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

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET197$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET197$Output.create)

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

// push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET198$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET198$Output.create)

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

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 44
@44
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET199$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET199$Output.create)

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

// push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET200$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET200$Output.create)

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

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET201$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET201$Output.create)

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

// push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET202$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET202$Output.create)

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

// push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET203$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET203$Output.create)

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

// push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET204$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET204$Output.create)

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

// push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET205$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET205$Output.create)

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

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET206$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET206$Output.create)

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

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET207$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET207$Output.create)

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

// push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET208$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET208$Output.create)

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

// push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
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

// call Output.create 12
@RET209$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET209$Output.create)

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

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET210$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET210$Output.create)

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

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET211$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET211$Output.create)

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

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET212$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET212$Output.create)

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

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET213$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET213$Output.create)

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

// push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET214$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET214$Output.create)

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

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET215$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET215$Output.create)

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

// push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET216$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET216$Output.create)

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

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET217$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET217$Output.create)

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

// push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET218$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET218$Output.create)

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

// push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET219$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET219$Output.create)

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

// push constant 92
@92
D=A
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

// push constant 0
@0
D=A
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET220$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET220$Output.create)

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

// push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET221$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET221$Output.create)

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

// push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET222$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET222$Output.create)

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

// push constant 95
@95
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
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

// call Output.create 12
@RET223$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET223$Output.create)

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

// push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET224$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET224$Output.create)

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

// push constant 97
@97
D=A
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

// push constant 0
@0
D=A
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

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET225$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET225$Output.create)

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

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET226$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET226$Output.create)

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

// push constant 99
@99
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET227$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET227$Output.create)

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

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET228$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET228$Output.create)

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

// push constant 101
@101
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET229$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET229$Output.create)

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

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET230$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET230$Output.create)

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

// push constant 103
@103
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// call Output.create 12
@RET231$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET231$Output.create)

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

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET232$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET232$Output.create)

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

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET233$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET233$Output.create)

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

// push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
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

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// call Output.create 12
@RET234$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET234$Output.create)

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

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET235$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET235$Output.create)

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

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET236$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET236$Output.create)

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

// push constant 109
@109
D=A
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

// push constant 0
@0
D=A
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

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET237$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET237$Output.create)

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

// push constant 110
@110
D=A
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

// push constant 0
@0
D=A
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

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET238$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET238$Output.create)

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

// push constant 111
@111
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET239$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET239$Output.create)

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

// push constant 112
@112
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
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

// call Output.create 12
@RET240$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET240$Output.create)

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

// push constant 113
@113
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
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

// call Output.create 12
@RET241$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET241$Output.create)

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

// push constant 114
@114
D=A
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

// push constant 0
@0
D=A
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

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET242$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET242$Output.create)

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

// push constant 115
@115
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET243$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET243$Output.create)

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

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET244$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET244$Output.create)

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

// push constant 117
@117
D=A
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

// push constant 0
@0
D=A
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

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET245$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET245$Output.create)

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

// push constant 118
@118
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET246$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET246$Output.create)

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

// push constant 119
@119
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET247$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET247$Output.create)

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

// push constant 120
@120
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET248$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET248$Output.create)

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

// push constant 121
@121
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
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

// call Output.create 12
@RET249$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET249$Output.create)

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

// push constant 122
@122
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET250$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET250$Output.create)

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

// push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET251$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET251$Output.create)

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

// push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET252$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET252$Output.create)

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

// push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET253$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET253$Output.create)

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

// push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@RET254$Output.create
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
@12
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.create
0;JMP
(RET254$Output.create)

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

// function Output.create 1
(Output.create)
@1
D=A-1
(Output.create$START)
@Output.create$END
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
@Output.create$START
0;JMP
(Output.create$END)

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@RET255$Array.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Array.new
0;JMP
(RET255$Array.new)

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
@24
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

// push constant 0
@0
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

// push argument 2
@2
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

// push constant 2
@2
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

// push argument 3
@3
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

// push constant 3
@3
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

// push argument 4
@4
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

// push constant 4
@4
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

// push argument 5
@5
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

// push constant 5
@5
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

// push argument 6
@6
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

// push constant 6
@6
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

// push argument 7
@7
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

// push constant 7
@7
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

// push argument 8
@8
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

// push constant 8
@8
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

// push argument 9
@9
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

// push constant 9
@9
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

// push argument 10
@10
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

// push constant 10
@10
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

// push argument 11
@11
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

// function Output.getMap 0
(Output.getMap)
@0
D=A-1
(Output.getMap$START)
@Output.getMap$END
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
@Output.getMap$START
0;JMP
(Output.getMap$END)

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

// push constant 32
@32
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
@TRUE26
D;JLT
@SP
A=M-1
M=0
@CONTINUE26
0;JMP
(TRUE26)
@SP
A=M-1
M=-1
(CONTINUE26)

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

// push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE27
D;JGT
@SP
A=M-1
M=0
@CONTINUE27
0;JMP
(TRUE27)
@SP
A=M-1
M=-1
(CONTINUE27)

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output$IF_FALSE0
0;JMP

// label IF_TRUE0
(Output$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// goto IF_END0
@Output$IF_END0
0;JMP

// label IF_FALSE0
(Output$IF_FALSE0)

// label IF_END0
(Output$IF_END0)

// push static 0
@24
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

// function Output.moveCursor 0
(Output.moveCursor)
@0
D=A-1
(Output.moveCursor$START)
@Output.moveCursor$END
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
@Output.moveCursor$START
0;JMP
(Output.moveCursor$END)

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

// pop static 2
@SP
AM=M-1
D=M
@21
M=D

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

// pop static 3
@SP
AM=M-1
D=M
@22
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

// function Output.printChar 4
(Output.printChar)
@4
D=A-1
(Output.printChar$START)
@Output.printChar$END
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
@Output.printChar$START
0;JMP
(Output.printChar$END)

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

// call Output.getMap 1
@RET256$Output.getMap
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.getMap
0;JMP
(RET256$Output.getMap)

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

// push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 2
@21
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET257$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET257$Math.multiply)

// push static 3
@22
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

// call Math.divide 2
@RET258$Math.divide
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(RET258$Math.divide)

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label WHILE_EXP0
(Output$WHILE_EXP0)

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

// push constant 11
@11
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
@TRUE28
D;JLT
@SP
A=M-1
M=0
@CONTINUE28
0;JMP
(TRUE28)
@SP
A=M-1
M=-1
(CONTINUE28)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output$WHILE_END0
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

// push static 3
@22
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

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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
@TRUE29
D;JEQ
@SP
A=M-1
M=0
@CONTINUE29
0;JMP
(TRUE29)
@SP
A=M-1
M=-1
(CONTINUE29)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Output$IF_FALSE1
0;JMP

// label IF_TRUE1
(Output$IF_TRUE1)

// push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET259$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET259$Math.multiply)

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

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// push static 1
@23
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

// push static 1
@23
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

// push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// push static 1
@23
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

// push static 1
@23
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

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// goto IF_END1
@Output$IF_END1
0;JMP

// label IF_FALSE1
(Output$IF_FALSE1)

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

// push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET260$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET260$Math.multiply)

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

// push static 1
@23
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

// push static 1
@23
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

// push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// push static 1
@23
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

// push static 1
@23
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

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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
(Output$IF_END1)

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

// push constant 32
@32
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

// goto WHILE_EXP0
@Output$WHILE_EXP0
0;JMP

// label WHILE_END0
(Output$WHILE_END0)

// push static 3
@22
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
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
@TRUE30
D;JEQ
@SP
A=M-1
M=0
@CONTINUE30
0;JMP
(TRUE30)
@SP
A=M-1
M=-1
(CONTINUE30)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Output$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Output$IF_FALSE2
0;JMP

// label IF_TRUE2
(Output$IF_TRUE2)

// push static 2
@21
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 22
@22
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
@TRUE31
D;JEQ
@SP
A=M-1
M=0
@CONTINUE31
0;JMP
(TRUE31)
@SP
A=M-1
M=-1
(CONTINUE31)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Output$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Output$IF_FALSE3
0;JMP

// label IF_TRUE3
(Output$IF_TRUE3)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 2
@SP
AM=M-1
D=M
@21
M=D

// goto IF_END3
@Output$IF_END3
0;JMP

// label IF_FALSE3
(Output$IF_FALSE3)

// label IF_END3
(Output$IF_END3)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 3
@SP
AM=M-1
D=M
@22
M=D

// goto IF_END2
@Output$IF_END2
0;JMP

// label IF_FALSE2
(Output$IF_FALSE2)

// push static 3
@22
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

// pop static 3
@SP
AM=M-1
D=M
@22
M=D

// label IF_END2
(Output$IF_END2)

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

// function Output.printString 3
(Output.printString)
@3
D=A-1
(Output.printString$START)
@Output.printString$END
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
@Output.printString$START
0;JMP
(Output.printString$END)

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

// call String.length 1
@RET261$String.length
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.length
0;JMP
(RET261$String.length)

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label WHILE_EXP1
(Output$WHILE_EXP1)

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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE32
D;JLT
@SP
A=M-1
M=0
@CONTINUE32
0;JMP
(TRUE32)
@SP
A=M-1
M=-1
(CONTINUE32)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Output$WHILE_END1
D;JNE

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

// call String.charAt 2
@RET262$String.charAt
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.charAt
0;JMP
(RET262$String.charAt)

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

// call Output.printChar 1
@RET263$Output.printChar
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printChar
0;JMP
(RET263$Output.printChar)

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

// goto WHILE_EXP1
@Output$WHILE_EXP1
0;JMP

// label WHILE_END1
(Output$WHILE_END1)

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

// function Output.printInt 1
(Output.printInt)
@1
D=A-1
(Output.printInt$START)
@Output.printInt$END
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
@Output.printInt$START
0;JMP
(Output.printInt$END)

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET264$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET264$String.new)

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

// call String.setInt 2
@RET265$String.setInt
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.setInt
0;JMP
(RET265$String.setInt)

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

// call Output.printString 1
@RET266$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET266$Output.printString)

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

// call String.dispose 1
@RET267$String.dispose
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.dispose
0;JMP
(RET267$String.dispose)

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

// function Output.println 0
(Output.println)
@0
D=A-1
(Output.println$START)
@Output.println$END
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
@Output.println$START
0;JMP
(Output.println$END)

// push static 2
@21
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 22
@22
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
@TRUE33
D;JEQ
@SP
A=M-1
M=0
@CONTINUE33
0;JMP
(TRUE33)
@SP
A=M-1
M=-1
(CONTINUE33)

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Output$IF_TRUE4
D;JNE

// goto IF_FALSE4
@Output$IF_FALSE4
0;JMP

// label IF_TRUE4
(Output$IF_TRUE4)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 2
@SP
AM=M-1
D=M
@21
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 3
@SP
AM=M-1
D=M
@22
M=D

// goto IF_END4
@Output$IF_END4
0;JMP

// label IF_FALSE4
(Output$IF_FALSE4)

// push static 2
@21
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

// pop static 2
@SP
AM=M-1
D=M
@21
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 3
@SP
AM=M-1
D=M
@22
M=D

// label IF_END4
(Output$IF_END4)

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

// function Output.backSpace 0
(Output.backSpace)
@0
D=A-1
(Output.backSpace$START)
@Output.backSpace$END
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
@Output.backSpace$START
0;JMP
(Output.backSpace$END)

// push static 3
@22
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
@TRUE34
D;JEQ
@SP
A=M-1
M=0
@CONTINUE34
0;JMP
(TRUE34)
@SP
A=M-1
M=-1
(CONTINUE34)

// if-goto IF_TRUE5
@SP
AM=M-1
D=M
@Output$IF_TRUE5
D;JNE

// goto IF_FALSE5
@Output$IF_FALSE5
0;JMP

// label IF_TRUE5
(Output$IF_TRUE5)

// push static 2
@21
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
@TRUE35
D;JEQ
@SP
A=M-1
M=0
@CONTINUE35
0;JMP
(TRUE35)
@SP
A=M-1
M=-1
(CONTINUE35)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@Output$IF_TRUE6
D;JNE

// goto IF_FALSE6
@Output$IF_FALSE6
0;JMP

// label IF_TRUE6
(Output$IF_TRUE6)

// push static 2
@21
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

// pop static 2
@SP
AM=M-1
D=M
@21
M=D

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 3
@SP
AM=M-1
D=M
@22
M=D

// goto IF_END6
@Output$IF_END6
0;JMP

// label IF_FALSE6
(Output$IF_FALSE6)

// label IF_END6
(Output$IF_END6)

// goto IF_END5
@Output$IF_END5
0;JMP

// label IF_FALSE5
(Output$IF_FALSE5)

// push static 3
@22
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

// pop static 3
@SP
AM=M-1
D=M
@22
M=D

// label IF_END5
(Output$IF_END5)

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

// function Screen.init 0
(Screen.init)
@0
D=A-1
(Screen.init$START)
@Screen.init$END
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
@Screen.init$START
0;JMP
(Screen.init$END)

// push constant 16384
@16384
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
@25
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop static 0
@SP
AM=M-1
D=M
@26
M=D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@RET268$Array.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Array.new
0;JMP
(RET268$Array.new)

// pop static 2
@SP
AM=M-1
D=M
@27
M=D

// push static 2
@27
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 1
@1
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

// push static 2
@27
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

// push constant 2
@2
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

// push static 2
@27
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 4
@4
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
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

// push constant 8
@8
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// push constant 16
@16
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 5
@5
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

// push constant 32
@32
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
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

// push constant 64
@64
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
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

// push constant 128
@128
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
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

// push constant 256
@256
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 9
@9
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

// push constant 512
@512
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
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

// push constant 1024
@1024
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
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

// push constant 2048
@2048
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
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

// push constant 4096
@4096
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 13
@13
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

// push constant 8192
@8192
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
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

// push constant 16384
@16384
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

// push static 2
@27
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
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

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16384
@16384
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

// function Screen.clearScreen 1
(Screen.clearScreen)
@1
D=A-1
(Screen.clearScreen$START)
@Screen.clearScreen$END
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
@Screen.clearScreen$START
0;JMP
(Screen.clearScreen$END)

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

// label WHILE_EXP0
(Screen$WHILE_EXP0)

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

// push constant 8192
@8192
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
@TRUE36
D;JLT
@SP
A=M-1
M=0
@CONTINUE36
0;JMP
(TRUE36)
@SP
A=M-1
M=-1
(CONTINUE36)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Screen$WHILE_END0
D;JNE

// push static 1
@25
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

// goto WHILE_EXP0
@Screen$WHILE_EXP0
0;JMP

// label WHILE_END0
(Screen$WHILE_END0)

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

// function Screen.setColor 0
(Screen.setColor)
@0
D=A-1
(Screen.setColor$START)
@Screen.setColor$END
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
@Screen.setColor$START
0;JMP
(Screen.setColor$END)

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

// pop static 0
@SP
AM=M-1
D=M
@26
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

// function Screen.drawPixel 2
(Screen.drawPixel)
@2
D=A-1
(Screen.drawPixel$START)
@Screen.drawPixel$END
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
@Screen.drawPixel$START
0;JMP
(Screen.drawPixel$END)

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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET269$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET269$Math.multiply)

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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@RET270$Math.divide
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(RET270$Math.divide)

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

// push static 2
@27
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

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// push static 0
@26
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Screen$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Screen$IF_FALSE0
0;JMP

// label IF_TRUE0
(Screen$IF_TRUE0)

// push static 1
@25
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

// push static 1
@25
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

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// goto IF_END0
@Screen$IF_END0
0;JMP

// label IF_FALSE0
(Screen$IF_FALSE0)

// push static 1
@25
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

// push static 1
@25
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

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// label IF_END0
(Screen$IF_END0)

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

// function Screen.drawLine 6
(Screen.drawLine)
@6
D=A-1
(Screen.drawLine$START)
@Screen.drawLine$END
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
@Screen.drawLine$START
0;JMP
(Screen.drawLine$END)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE37
D;JGT
@SP
A=M-1
M=0
@CONTINUE37
0;JMP
(TRUE37)
@SP
A=M-1
M=-1
(CONTINUE37)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Screen$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Screen$IF_FALSE1
0;JMP

// label IF_TRUE1
(Screen$IF_TRUE1)

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

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@4
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 2
@SP
AM=M-1
D=M
@R13
M=D
@2
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

// pop local 4
@SP
AM=M-1
D=M
@R13
M=D
@4
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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 3
@SP
AM=M-1
D=M
@R13
M=D
@3
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

// goto IF_END1
@Screen$IF_END1
0;JMP

// label IF_FALSE1
(Screen$IF_FALSE1)

// label IF_END1
(Screen$IF_END1)

// push argument 2
@2
D=A
@ARG
A=D+M
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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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
@TRUE38
D;JEQ
@SP
A=M-1
M=0
@CONTINUE38
0;JMP
(TRUE38)
@SP
A=M-1
M=-1
(CONTINUE38)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Screen$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Screen$IF_FALSE2
0;JMP

// label IF_TRUE2
(Screen$IF_TRUE2)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// call Screen.drawHLine 3
@RET271$Screen.drawHLine
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
@3
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawHLine
0;JMP
(RET271$Screen.drawHLine)

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

// goto IF_END2
@Screen$IF_END2
0;JMP

// label IF_FALSE2
(Screen$IF_FALSE2)

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
@TRUE39
D;JEQ
@SP
A=M-1
M=0
@CONTINUE39
0;JMP
(TRUE39)
@SP
A=M-1
M=-1
(CONTINUE39)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Screen$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Screen$IF_FALSE3
0;JMP

// label IF_TRUE3
(Screen$IF_TRUE3)

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawVLine 3
@RET272$Screen.drawVLine
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
@3
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawVLine
0;JMP
(RET272$Screen.drawVLine)

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

// goto IF_END3
@Screen$IF_END3
0;JMP

// label IF_FALSE3
(Screen$IF_FALSE3)

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE40
D;JGT
@SP
A=M-1
M=0
@CONTINUE40
0;JMP
(TRUE40)
@SP
A=M-1
M=-1
(CONTINUE40)

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Screen$IF_TRUE4
D;JNE

// goto IF_FALSE4
@Screen$IF_FALSE4
0;JMP

// label IF_TRUE4
(Screen$IF_TRUE4)

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@5
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
(Screen$WHILE_EXP1)

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE41
D;JGT
@SP
A=M-1
M=0
@CONTINUE41
0;JMP
(TRUE41)
@SP
A=M-1
M=-1
(CONTINUE41)

// not
@SP
A=M-1
M=!M

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE42
D;JGT
@SP
A=M-1
M=0
@CONTINUE42
0;JMP
(TRUE42)
@SP
A=M-1
M=-1
(CONTINUE42)

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Screen$WHILE_END1
D;JNE

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawPixel 2
@RET273$Screen.drawPixel
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(RET273$Screen.drawPixel)

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

// push local 5
@5
D=A
@LCL
A=D+M
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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE43
D;JLT
@SP
A=M-1
M=0
@CONTINUE43
0;JMP
(TRUE43)
@SP
A=M-1
M=-1
(CONTINUE43)

// if-goto IF_TRUE5
@SP
AM=M-1
D=M
@Screen$IF_TRUE5
D;JNE

// goto IF_FALSE5
@Screen$IF_FALSE5
0;JMP

// label IF_TRUE5
(Screen$IF_TRUE5)

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

// push local 5
@5
D=A
@LCL
A=D+M
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

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@5
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

// goto IF_END5
@Screen$IF_END5
0;JMP

// label IF_FALSE5
(Screen$IF_FALSE5)

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

// push local 5
@5
D=A
@LCL
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@5
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

// label IF_END5
(Screen$IF_END5)

// goto WHILE_EXP1
@Screen$WHILE_EXP1
0;JMP

// label WHILE_END1
(Screen$WHILE_END1)

// goto IF_END4
@Screen$IF_END4
0;JMP

// label IF_FALSE4
(Screen$IF_FALSE4)

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@5
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

// label WHILE_EXP2
(Screen$WHILE_EXP2)

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE44
D;JGT
@SP
A=M-1
M=0
@CONTINUE44
0;JMP
(TRUE44)
@SP
A=M-1
M=-1
(CONTINUE44)

// not
@SP
A=M-1
M=!M

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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE45
D;JLT
@SP
A=M-1
M=0
@CONTINUE45
0;JMP
(TRUE45)
@SP
A=M-1
M=-1
(CONTINUE45)

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END2
@SP
AM=M-1
D=M
@Screen$WHILE_END2
D;JNE

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawPixel 2
@RET274$Screen.drawPixel
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(RET274$Screen.drawPixel)

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

// push local 5
@5
D=A
@LCL
A=D+M
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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE46
D;JLT
@SP
A=M-1
M=0
@CONTINUE46
0;JMP
(TRUE46)
@SP
A=M-1
M=-1
(CONTINUE46)

// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@Screen$IF_TRUE6
D;JNE

// goto IF_FALSE6
@Screen$IF_FALSE6
0;JMP

// label IF_TRUE6
(Screen$IF_TRUE6)

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

// push local 5
@5
D=A
@LCL
A=D+M
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@5
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

// goto IF_END6
@Screen$IF_END6
0;JMP

// label IF_FALSE6
(Screen$IF_FALSE6)

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

// push local 5
@5
D=A
@LCL
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// pop local 5
@SP
AM=M-1
D=M
@R13
M=D
@5
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

// label IF_END6
(Screen$IF_END6)

// goto WHILE_EXP2
@Screen$WHILE_EXP2
0;JMP

// label WHILE_END2
(Screen$WHILE_END2)

// label IF_END4
(Screen$IF_END4)

// label IF_END3
(Screen$IF_END3)

// label IF_END2
(Screen$IF_END2)

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

// function Screen.drawHLine 1
(Screen.drawHLine)
@1
D=A-1
(Screen.drawHLine$START)
@Screen.drawHLine$END
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
@Screen.drawHLine$START
0;JMP
(Screen.drawHLine$END)

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE47
D;JGT
@SP
A=M-1
M=0
@CONTINUE47
0;JMP
(TRUE47)
@SP
A=M-1
M=-1
(CONTINUE47)

// if-goto IF_TRUE7
@SP
AM=M-1
D=M
@Screen$IF_TRUE7
D;JNE

// goto IF_FALSE7
@Screen$IF_FALSE7
0;JMP

// label IF_TRUE7
(Screen$IF_TRUE7)

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

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// goto IF_END7
@Screen$IF_END7
0;JMP

// label IF_FALSE7
(Screen$IF_FALSE7)

// label IF_END7
(Screen$IF_END7)

// label WHILE_EXP3
(Screen$WHILE_EXP3)

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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE48
D;JGT
@SP
A=M-1
M=0
@CONTINUE48
0;JMP
(TRUE48)
@SP
A=M-1
M=-1
(CONTINUE48)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END3
@SP
AM=M-1
D=M
@Screen$WHILE_END3
D;JNE

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawPixel 2
@RET275$Screen.drawPixel
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(RET275$Screen.drawPixel)

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

// goto WHILE_EXP3
@Screen$WHILE_EXP3
0;JMP

// label WHILE_END3
(Screen$WHILE_END3)

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

// function Screen.drawVLine 1
(Screen.drawVLine)
@1
D=A-1
(Screen.drawVLine$START)
@Screen.drawVLine$END
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
@Screen.drawVLine$START
0;JMP
(Screen.drawVLine$END)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE49
D;JGT
@SP
A=M-1
M=0
@CONTINUE49
0;JMP
(TRUE49)
@SP
A=M-1
M=-1
(CONTINUE49)

// if-goto IF_TRUE8
@SP
AM=M-1
D=M
@Screen$IF_TRUE8
D;JNE

// goto IF_FALSE8
@Screen$IF_FALSE8
0;JMP

// label IF_TRUE8
(Screen$IF_TRUE8)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// pop argument 2
@SP
AM=M-1
D=M
@R13
M=D
@2
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

// goto IF_END8
@Screen$IF_END8
0;JMP

// label IF_FALSE8
(Screen$IF_FALSE8)

// label IF_END8
(Screen$IF_END8)

// label WHILE_EXP4
(Screen$WHILE_EXP4)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE50
D;JGT
@SP
A=M-1
M=0
@CONTINUE50
0;JMP
(TRUE50)
@SP
A=M-1
M=-1
(CONTINUE50)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END4
@SP
AM=M-1
D=M
@Screen$WHILE_END4
D;JNE

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

// call Screen.drawPixel 2
@RET276$Screen.drawPixel
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(RET276$Screen.drawPixel)

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

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// goto WHILE_EXP4
@Screen$WHILE_EXP4
0;JMP

// label WHILE_END4
(Screen$WHILE_END4)

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

// function Screen.drawRectangle 0
(Screen.drawRectangle)
@0
D=A-1
(Screen.drawRectangle$START)
@Screen.drawRectangle$END
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
@Screen.drawRectangle$START
0;JMP
(Screen.drawRectangle$END)

// label WHILE_EXP5
(Screen$WHILE_EXP5)

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

// push argument 3
@3
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
@TRUE51
D;JLT
@SP
A=M-1
M=0
@CONTINUE51
0;JMP
(TRUE51)
@SP
A=M-1
M=-1
(CONTINUE51)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END5
@SP
AM=M-1
D=M
@Screen$WHILE_END5
D;JNE

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// call Screen.drawHLine 3
@RET277$Screen.drawHLine
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
@3
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawHLine
0;JMP
(RET277$Screen.drawHLine)

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

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// goto WHILE_EXP5
@Screen$WHILE_EXP5
0;JMP

// label WHILE_END5
(Screen$WHILE_END5)

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

// function Screen.drawCircle 2
(Screen.drawCircle)
@2
D=A-1
(Screen.drawCircle$START)
@Screen.drawCircle$END
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
@Screen.drawCircle$START
0;JMP
(Screen.drawCircle$END)

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

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

// label WHILE_EXP6
(Screen$WHILE_EXP6)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE52
D;JGT
@SP
A=M-1
M=0
@CONTINUE52
0;JMP
(TRUE52)
@SP
A=M-1
M=-1
(CONTINUE52)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END6
@SP
AM=M-1
D=M
@Screen$WHILE_END6
D;JNE

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET278$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET278$Math.multiply)

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

// call Math.multiply 2
@RET279$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET279$Math.multiply)

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// call Math.sqrt 1
@RET280$Math.sqrt
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.sqrt
0;JMP
(RET280$Math.sqrt)

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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

// call Screen.drawHLine 3
@RET281$Screen.drawHLine
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
@3
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawHLine
0;JMP
(RET281$Screen.drawHLine)

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

// goto WHILE_EXP6
@Screen$WHILE_EXP6
0;JMP

// label WHILE_END6
(Screen$WHILE_END6)

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

// function Screen.drawEmptyCircle 2
(Screen.drawEmptyCircle)
@2
D=A-1
(Screen.drawEmptyCircle$START)
@Screen.drawEmptyCircle$END
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
@Screen.drawEmptyCircle$START
0;JMP
(Screen.drawEmptyCircle$END)

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

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

// label WHILE_EXP7
(Screen$WHILE_EXP7)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE53
D;JGT
@SP
A=M-1
M=0
@CONTINUE53
0;JMP
(TRUE53)
@SP
A=M-1
M=-1
(CONTINUE53)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END7
@SP
AM=M-1
D=M
@Screen$WHILE_END7
D;JNE

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET282$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET282$Math.multiply)

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

// call Math.multiply 2
@RET283$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET283$Math.multiply)

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// call Math.sqrt 1
@RET284$Math.sqrt
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.sqrt
0;JMP
(RET284$Math.sqrt)

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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

// call Screen.drawPixel 2
@RET285$Screen.drawPixel
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(RET285$Screen.drawPixel)

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

// call Screen.drawPixel 2
@RET286$Screen.drawPixel
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawPixel
0;JMP
(RET286$Screen.drawPixel)

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

// goto WHILE_EXP7
@Screen$WHILE_EXP7
0;JMP

// label WHILE_END7
(Screen$WHILE_END7)

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

// function String.new 0
(String.new)
@0
D=A-1
(String.new$START)
@String.new$END
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
@String.new$START
0;JMP
(String.new$END)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1
@RET287$Memory.alloc
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.alloc
0;JMP
(RET287$Memory.alloc)

// pop pointer 0
@SP
AM=M-1
D=M
@R3
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
@TRUE54
D;JEQ
@SP
A=M-1
M=0
@CONTINUE54
0;JMP
(TRUE54)
@SP
A=M-1
M=-1
(CONTINUE54)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@String$IF_TRUE0
D;JNE

// goto IF_FALSE0
@String$IF_FALSE0
0;JMP

// label IF_TRUE0
(String$IF_TRUE0)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// goto IF_END0
@String$IF_END0
0;JMP

// label IF_FALSE0
(String$IF_FALSE0)

// label IF_END0
(String$IF_END0)

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

// call Array.new 1
@RET288$Array.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Array.new
0;JMP
(RET288$Array.new)

// pop this 0
@SP
AM=M-1
D=M
@R13
M=D
@0
D=A
@R3
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

// pop this 1
@SP
AM=M-1
D=M
@R13
M=D
@1
D=A
@R3
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

// pop this 2
@SP
AM=M-1
D=M
@R13
M=D
@2
D=A
@R3
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// push pointer 0
@R3
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

// function String.dispose 0
(String.dispose)
@0
D=A-1
(String.dispose$START)
@String.dispose$END
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
@String.dispose$START
0;JMP
(String.dispose$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push this 0
@R3
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Array.dispose 1
@RET289$Array.dispose
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Array.dispose
0;JMP
(RET289$Array.dispose)

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

// function String.length 0
(String.length)
@0
D=A-1
(String.length$START)
@String.length$END
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
@String.length$START
0;JMP
(String.length$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push this 1
@R3
D=M
@1
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

// function String.charAt 0
(String.charAt)
@0
D=A-1
(String.charAt$START)
@String.charAt$END
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
@String.charAt$START
0;JMP
(String.charAt$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push this 0
@R3
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// function String.setCharAt 0
(String.setCharAt)
@0
D=A-1
(String.setCharAt$START)
@String.setCharAt$END
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
@String.setCharAt$START
0;JMP
(String.setCharAt$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push this 0
@R3
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 2
@2
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

// function String.appendChar 0
(String.appendChar)
@0
D=A-1
(String.appendChar$START)
@String.appendChar$END
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
@String.appendChar$START
0;JMP
(String.appendChar$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push this 1
@R3
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@R3
D=M
@2
A=D+A
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
@TRUE55
D;JLT
@SP
A=M-1
M=0
@CONTINUE55
0;JMP
(TRUE55)
@SP
A=M-1
M=-1
(CONTINUE55)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@String$IF_TRUE1
D;JNE

// goto IF_FALSE1
@String$IF_FALSE1
0;JMP

// label IF_TRUE1
(String$IF_TRUE1)

// push this 0
@R3
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@R3
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

// push this 1
@R3
D=M
@1
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

// pop this 1
@SP
AM=M-1
D=M
@R13
M=D
@1
D=A
@R3
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END1
@String$IF_END1
0;JMP

// label IF_FALSE1
(String$IF_FALSE1)

// label IF_END1
(String$IF_END1)

// push pointer 0
@R3
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

// function String.eraseLastChar 0
(String.eraseLastChar)
@0
D=A-1
(String.eraseLastChar$START)
@String.eraseLastChar$END
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
@String.eraseLastChar$START
0;JMP
(String.eraseLastChar$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push this 1
@R3
D=M
@1
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

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE56
D;JGT
@SP
A=M-1
M=0
@CONTINUE56
0;JMP
(TRUE56)
@SP
A=M-1
M=-1
(CONTINUE56)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@String$IF_TRUE2
D;JNE

// goto IF_FALSE2
@String$IF_FALSE2
0;JMP

// label IF_TRUE2
(String$IF_TRUE2)

// push this 1
@R3
D=M
@1
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// pop this 1
@SP
AM=M-1
D=M
@R13
M=D
@1
D=A
@R3
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

// goto IF_END2
@String$IF_END2
0;JMP

// label IF_FALSE2
(String$IF_FALSE2)

// label IF_END2
(String$IF_END2)

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

// function String.intValue 4
(String.intValue)
@4
D=A-1
(String.intValue$START)
@String.intValue$END
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
@String.intValue$START
0;JMP
(String.intValue$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push this 0
@R3
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

// push constant 45
@45
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
@TRUE57
D;JEQ
@SP
A=M-1
M=0
@CONTINUE57
0;JMP
(TRUE57)
@SP
A=M-1
M=-1
(CONTINUE57)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@String$IF_TRUE3
D;JNE

// goto IF_FALSE3
@String$IF_FALSE3
0;JMP

// label IF_TRUE3
(String$IF_TRUE3)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

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

// goto IF_END3
@String$IF_END3
0;JMP

// label IF_FALSE3
(String$IF_FALSE3)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label IF_END3
(String$IF_END3)

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

// label WHILE_EXP0
(String$WHILE_EXP0)

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

// push this 1
@R3
D=M
@1
A=D+A
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
@TRUE58
D;JLT
@SP
A=M-1
M=0
@CONTINUE58
0;JMP
(TRUE58)
@SP
A=M-1
M=-1
(CONTINUE58)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@String$WHILE_END0
D;JNE

// push this 0
@R3
D=M
@0
A=D+A
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

// push constant 48
@48
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
@TRUE59
D;JLT
@SP
A=M-1
M=0
@CONTINUE59
0;JMP
(TRUE59)
@SP
A=M-1
M=-1
(CONTINUE59)

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

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE60
D;JGT
@SP
A=M-1
M=0
@CONTINUE60
0;JMP
(TRUE60)
@SP
A=M-1
M=-1
(CONTINUE60)

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@String$IF_TRUE4
D;JNE

// goto IF_FALSE4
@String$IF_FALSE4
0;JMP

// label IF_TRUE4
(String$IF_TRUE4)

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

// goto IF_END4
@String$IF_END4
0;JMP

// label IF_FALSE4
(String$IF_FALSE4)

// label IF_END4
(String$IF_END4)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET290$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET290$Math.multiply)

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

// push constant 48
@48
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
@String$WHILE_EXP0
0;JMP

// label WHILE_END0
(String$WHILE_END0)

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

// call Math.multiply 2
@RET291$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET291$Math.multiply)

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

// function String.setInt 0
(String.setInt)
@0
D=A-1
(String.setInt$START)
@String.setInt$END
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
@String.setInt$START
0;JMP
(String.setInt$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@SP
AM=M-1
D=M
@R13
M=D
@1
D=A
@R3
D=D+M
@R14
M=D
@R13
D=M
@R14
A=M
M=D

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

// push constant 0
@0
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
@TRUE61
D;JLT
@SP
A=M-1
M=0
@CONTINUE61
0;JMP
(TRUE61)
@SP
A=M-1
M=-1
(CONTINUE61)

// if-goto IF_TRUE5
@SP
AM=M-1
D=M
@String$IF_TRUE5
D;JNE

// goto IF_FALSE5
@String$IF_FALSE5
0;JMP

// label IF_TRUE5
(String$IF_TRUE5)

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET292$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET292$String.appendChar)

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

// neg
@SP
A=M-1
M=-M

// pop argument 1
@SP
AM=M-1
D=M
@R13
M=D
@1
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

// goto IF_END5
@String$IF_END5
0;JMP

// label IF_FALSE5
(String$IF_FALSE5)

// label IF_END5
(String$IF_END5)

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// call String.setIntHelper 2
@RET293$String.setIntHelper
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.setIntHelper
0;JMP
(RET293$String.setIntHelper)

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

// function String.setIntHelper 1
(String.setIntHelper)
@1
D=A-1
(String.setIntHelper$START)
@String.setIntHelper$END
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
@String.setIntHelper$START
0;JMP
(String.setIntHelper$END)

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

// pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D

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

// push constant 10
@10
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
@TRUE62
D;JLT
@SP
A=M-1
M=0
@CONTINUE62
0;JMP
(TRUE62)
@SP
A=M-1
M=-1
(CONTINUE62)

// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@String$IF_TRUE6
D;JNE

// goto IF_FALSE6
@String$IF_FALSE6
0;JMP

// label IF_TRUE6
(String$IF_TRUE6)

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 48
@48
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

// call String.appendChar 2
@RET294$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET294$String.appendChar)

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

// goto IF_END6
@String$IF_END6
0;JMP

// label IF_FALSE6
(String$IF_FALSE6)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@RET295$Math.divide
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.divide
0;JMP
(RET295$Math.divide)

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

// push pointer 0
@R3
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

// call String.setIntHelper 2
@RET296$String.setIntHelper
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.setIntHelper
0;JMP
(RET296$String.setIntHelper)

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

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET297$Math.multiply
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP
(RET297$Math.multiply)

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// push constant 48
@48
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

// call String.appendChar 2
@RET298$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET298$String.appendChar)

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

// label IF_END6
(String$IF_END6)

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

// function String.newLine 0
(String.newLine)
@0
D=A-1
(String.newLine$START)
@String.newLine$END
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
@String.newLine$START
0;JMP
(String.newLine$END)

// push constant 128
@128
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

// function String.backSpace 0
(String.backSpace)
@0
D=A-1
(String.backSpace$START)
@String.backSpace$END
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
@String.backSpace$START
0;JMP
(String.backSpace$END)

// push constant 129
@129
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

// function String.doubleQuote 0
(String.doubleQuote)
@0
D=A-1
(String.doubleQuote$START)
@String.doubleQuote$END
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
@String.doubleQuote$START
0;JMP
(String.doubleQuote$END)

// push constant 34
@34
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

// function Sys.init 0
(Sys.init)
@0
D=A-1
(Sys.init$START)
@Sys.init$END
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
@Sys.init$START
0;JMP
(Sys.init$END)

// call Memory.init 0
@RET299$Memory.init
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.init
0;JMP
(RET299$Memory.init)

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

// call Math.init 0
@RET300$Math.init
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.init
0;JMP
(RET300$Math.init)

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

// call Screen.init 0
@RET301$Screen.init
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.init
0;JMP
(RET301$Screen.init)

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

// call Output.init 0
@RET302$Output.init
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.init
0;JMP
(RET302$Output.init)

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

// call Keyboard.init 0
@RET303$Keyboard.init
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.init
0;JMP
(RET303$Keyboard.init)

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

// call Main.main 0
@RET304$Main.main
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.main
0;JMP
(RET304$Main.main)

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

// call Sys.halt 0
@RET305$Sys.halt
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.halt
0;JMP
(RET305$Sys.halt)

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

// function Sys.halt 0
(Sys.halt)
@0
D=A-1
(Sys.halt$START)
@Sys.halt$END
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
@Sys.halt$START
0;JMP
(Sys.halt$END)

// label WHILE_EXP0
(Sys$WHILE_EXP0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Sys$WHILE_END0
D;JNE

// goto WHILE_EXP0
@Sys$WHILE_EXP0
0;JMP

// label WHILE_END0
(Sys$WHILE_END0)

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

// function Sys.wait 1
(Sys.wait)
@1
D=A-1
(Sys.wait$START)
@Sys.wait$END
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
@Sys.wait$START
0;JMP
(Sys.wait$END)

// label WHILE_EXP1
(Sys$WHILE_EXP1)

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE63
D;JGT
@SP
A=M-1
M=0
@CONTINUE63
0;JMP
(TRUE63)
@SP
A=M-1
M=-1
(CONTINUE63)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Sys$WHILE_END1
D;JNE

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

// label WHILE_EXP2
(Sys$WHILE_EXP2)

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

// push constant 89
@89
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
@TRUE64
D;JLT
@SP
A=M-1
M=0
@CONTINUE64
0;JMP
(TRUE64)
@SP
A=M-1
M=-1
(CONTINUE64)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END2
@SP
AM=M-1
D=M
@Sys$WHILE_END2
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

// goto WHILE_EXP2
@Sys$WHILE_EXP2
0;JMP

// label WHILE_END2
(Sys$WHILE_END2)

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

// goto WHILE_EXP1
@Sys$WHILE_EXP1
0;JMP

// label WHILE_END1
(Sys$WHILE_END1)

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

// function Sys.error 1
(Sys.error)
@1
D=A-1
(Sys.error$START)
@Sys.error$END
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
@Sys.error$START
0;JMP
(Sys.error$END)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET306$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET306$String.new)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET307$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET307$String.appendChar)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET308$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET308$String.appendChar)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET309$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET309$String.appendChar)

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET310$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET310$String.appendChar)

// call Output.printString 1
@RET311$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET311$Output.printString)

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

// call Output.printInt 1
@RET312$Output.printInt
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printInt
0;JMP
(RET312$Output.printInt)

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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@RET313$String.new
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.new
0;JMP
(RET313$String.new)

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@RET314$String.appendChar
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@String.appendChar
0;JMP
(RET314$String.appendChar)

// call Output.printString 1
@RET315$Output.printString
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Output.printString
0;JMP
(RET315$Output.printString)

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

// call Sys.halt 0
@RET316$Sys.halt
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
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.halt
0;JMP
(RET316$Sys.halt)

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

