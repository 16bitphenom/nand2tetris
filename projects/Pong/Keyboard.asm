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
@RET0$Output.printChar
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET0$Output.printChar)

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
@RET1$Output.printString
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET1$Output.printString)

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
@RET2$String.length
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET2$String.length)

// call String.new 1
@RET3$String.new
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET3$String.new)

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
@RET4$Keyboard.readChar
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET4$Keyboard.readChar)

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
@RET5$Output.println
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET5$Output.println)

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
@RET6$String.eraseLastChar
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET6$String.eraseLastChar)

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
@RET7$Output.backSpace
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET7$Output.backSpace)

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
@RET8$String.appendChar
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET8$String.appendChar)

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
@RET9$Keyboard.readLine
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET9$Keyboard.readLine)

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
@RET10$String.intValue
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET10$String.intValue)

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

