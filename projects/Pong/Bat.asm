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
// function Bat.new 0
(Bat.new)
@0
D=A-1
(Bat.new$START)
@Bat.new$END
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
@Bat.new$START
0;JMP
(Bat.new$END)

// push constant 5
@5
D=A
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

// pop this 3
@SP
AM=M-1
D=M
@R13
M=D
@3
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

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 4
@SP
AM=M-1
D=M
@R13
M=D
@4
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

// call Bat.show 1
@RET1$Bat.show
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Bat.show
0;JMP
(RET1$Bat.show)

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

// function Bat.dispose 0
(Bat.dispose)
@0
D=A-1
(Bat.dispose$START)
@Bat.dispose$END
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
@Bat.dispose$START
0;JMP
(Bat.dispose$END)

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
@RET2$Memory.deAlloc
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET2$Memory.deAlloc)

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

// function Bat.show 0
(Bat.show)
@0
D=A-1
(Bat.show$START)
@Bat.show$END
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
@Bat.show$START
0;JMP
(Bat.show$END)

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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1
@RET3$Screen.setColor
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.setColor
0;JMP
(RET3$Screen.setColor)

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

// call Bat.draw 1
@RET4$Bat.draw
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Bat.draw
0;JMP
(RET4$Bat.draw)

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

// function Bat.hide 0
(Bat.hide)
@0
D=A-1
(Bat.hide$START)
@Bat.hide$END
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
@Bat.hide$START
0;JMP
(Bat.hide$END)

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

// call Screen.setColor 1
@RET5$Screen.setColor
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.setColor
0;JMP
(RET5$Screen.setColor)

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

// call Bat.draw 1
@RET6$Bat.draw
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Bat.draw
0;JMP
(RET6$Bat.draw)

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

// function Bat.draw 0
(Bat.draw)
@0
D=A-1
(Bat.draw$START)
@Bat.draw$END
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
@Bat.draw$START
0;JMP
(Bat.draw$END)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// push this 3
@R3
D=M
@3
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

// call Screen.drawRectangle 4
@RET7$Screen.drawRectangle
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.drawRectangle
0;JMP
(RET7$Screen.drawRectangle)

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

// function Bat.setDirection 0
(Bat.setDirection)
@0
D=A-1
(Bat.setDirection$START)
@Bat.setDirection$END
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
@Bat.setDirection$START
0;JMP
(Bat.setDirection$END)

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

// pop this 4
@SP
AM=M-1
D=M
@R13
M=D
@4
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

// function Bat.getLeft 0
(Bat.getLeft)
@0
D=A-1
(Bat.getLeft$START)
@Bat.getLeft$END
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
@Bat.getLeft$START
0;JMP
(Bat.getLeft$END)

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

// function Bat.getRight 0
(Bat.getRight)
@0
D=A-1
(Bat.getRight$START)
@Bat.getRight$END
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
@Bat.getRight$START
0;JMP
(Bat.getRight$END)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// function Bat.setWidth 0
(Bat.setWidth)
@0
D=A-1
(Bat.setWidth$START)
@Bat.setWidth$END
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
@Bat.setWidth$START
0;JMP
(Bat.setWidth$END)

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

// call Bat.hide 1
@RET8$Bat.hide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Bat.hide
0;JMP
(RET8$Bat.hide)

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

// call Bat.show 1
@RET9$Bat.show
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Bat.show
0;JMP
(RET9$Bat.show)

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

// function Bat.move 0
(Bat.move)
@0
D=A-1
(Bat.move$START)
@Bat.move$END
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
@Bat.move$START
0;JMP
(Bat.move$END)

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

// push this 4
@R3
D=M
@4
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

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Bat$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Bat$IF_FALSE0
0;JMP

// label IF_TRUE0
(Bat$IF_TRUE0)

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

// push constant 4
@4
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

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Bat$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Bat$IF_FALSE1
0;JMP

// label IF_TRUE1
(Bat$IF_TRUE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// goto IF_END1
@Bat$IF_END1
0;JMP

// label IF_FALSE1
(Bat$IF_FALSE1)

// label IF_END1
(Bat$IF_END1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1
@RET10$Screen.setColor
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.setColor
0;JMP
(RET10$Screen.setColor)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// push this 3
@R3
D=M
@3
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

// call Screen.drawRectangle 4
@RET11$Screen.drawRectangle
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.drawRectangle
0;JMP
(RET11$Screen.drawRectangle)

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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1
@RET12$Screen.setColor
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.setColor
0;JMP
(RET12$Screen.setColor)

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

// push this 3
@R3
D=M
@3
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

// call Screen.drawRectangle 4
@RET13$Screen.drawRectangle
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.drawRectangle
0;JMP
(RET13$Screen.drawRectangle)

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
@Bat$IF_END0
0;JMP

// label IF_FALSE0
(Bat$IF_FALSE0)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 511
@511
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
@TRUE2
D;JGT
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

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Bat$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Bat$IF_FALSE2
0;JMP

// label IF_TRUE2
(Bat$IF_TRUE2)

// push constant 511
@511
D=A
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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

// goto IF_END2
@Bat$IF_END2
0;JMP

// label IF_FALSE2
(Bat$IF_FALSE2)

// label IF_END2
(Bat$IF_END2)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1
@RET14$Screen.setColor
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.setColor
0;JMP
(RET14$Screen.setColor)

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

// push constant 4
@4
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

// push this 3
@R3
D=M
@3
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

// call Screen.drawRectangle 4
@RET15$Screen.drawRectangle
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.drawRectangle
0;JMP
(RET15$Screen.drawRectangle)

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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1
@RET16$Screen.setColor
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.setColor
0;JMP
(RET16$Screen.setColor)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 3
@3
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// push this 3
@R3
D=M
@3
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

// call Screen.drawRectangle 4
@RET17$Screen.drawRectangle
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Screen.drawRectangle
0;JMP
(RET17$Screen.drawRectangle)

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

// label IF_END0
(Bat$IF_END0)

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

