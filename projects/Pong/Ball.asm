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
// function Ball.new 0
(Ball.new)
@0
D=A-1
(Ball.new$START)
@Ball.new$END
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
@Ball.new$START
0;JMP
(Ball.new$END)

// push constant 15
@15
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

// pop this 10
@SP
AM=M-1
D=M
@R13
M=D
@10
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

// push constant 6
@6
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

// pop this 11
@SP
AM=M-1
D=M
@R13
M=D
@11
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

// pop this 12
@SP
AM=M-1
D=M
@R13
M=D
@12
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

// push constant 6
@6
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

// pop this 13
@SP
AM=M-1
D=M
@R13
M=D
@13
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

// pop this 14
@SP
AM=M-1
D=M
@R13
M=D
@14
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

// call Ball.show 1
@RET1$Ball.show
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Ball.show
0;JMP
(RET1$Ball.show)

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

// function Ball.dispose 0
(Ball.dispose)
@0
D=A-1
(Ball.dispose$START)
@Ball.dispose$END
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
@Ball.dispose$START
0;JMP
(Ball.dispose$END)

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

// function Ball.show 0
(Ball.show)
@0
D=A-1
(Ball.show$START)
@Ball.show$END
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
@Ball.show$START
0;JMP
(Ball.show$END)

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

// call Ball.draw 1
@RET4$Ball.draw
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Ball.draw
0;JMP
(RET4$Ball.draw)

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

// function Ball.hide 0
(Ball.hide)
@0
D=A-1
(Ball.hide$START)
@Ball.hide$END
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
@Ball.hide$START
0;JMP
(Ball.hide$END)

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

// call Ball.draw 1
@RET6$Ball.draw
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Ball.draw
0;JMP
(RET6$Ball.draw)

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

// function Ball.draw 0
(Ball.draw)
@0
D=A-1
(Ball.draw$START)
@Ball.draw$END
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
@Ball.draw$START
0;JMP
(Ball.draw$END)

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

// function Ball.getLeft 0
(Ball.getLeft)
@0
D=A-1
(Ball.getLeft$START)
@Ball.getLeft$END
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
@Ball.getLeft$START
0;JMP
(Ball.getLeft$END)

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

// function Ball.getRight 0
(Ball.getRight)
@0
D=A-1
(Ball.getRight$START)
@Ball.getRight$END
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
@Ball.getRight$START
0;JMP
(Ball.getRight$END)

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

// function Ball.setDestination 3
(Ball.setDestination)
@3
D=A-1
(Ball.setDestination$START)
@Ball.setDestination$END
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
@Ball.setDestination$START
0;JMP
(Ball.setDestination$END)

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

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

// call Math.abs 1
@RET8$Math.abs
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET8$Math.abs)

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

// call Math.abs 1
@RET9$Math.abs
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET9$Math.abs)

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

// pop this 7
@SP
AM=M-1
D=M
@R13
M=D
@7
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

// push this 7
@R3
D=M
@7
A=D+A
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
@Ball$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Ball$IF_FALSE0
0;JMP

// label IF_TRUE0
(Ball$IF_TRUE0)

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

// pop this 8
@SP
AM=M-1
D=M
@R13
M=D
@8
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
@TRUE2
D;JLT
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

// pop this 9
@SP
AM=M-1
D=M
@R13
M=D
@9
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

// goto IF_END0
@Ball$IF_END0
0;JMP

// label IF_FALSE0
(Ball$IF_FALSE0)

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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE3
D;JLT
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

// pop this 8
@SP
AM=M-1
D=M
@R13
M=D
@8
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

// lt
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE4
D;JLT
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

// pop this 9
@SP
AM=M-1
D=M
@R13
M=D
@9
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

// label IF_END0
(Ball$IF_END0)

// push constant 2
@2
D=A
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
@RET10$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET10$Math.multiply)

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

// push constant 2
@2
D=A
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
@RET11$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET11$Math.multiply)

// pop this 5
@SP
AM=M-1
D=M
@R13
M=D
@5
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=D-M
M=-M

// call Math.multiply 2
@RET12$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET12$Math.multiply)

// pop this 6
@SP
AM=M-1
D=M
@R13
M=D
@6
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

// function Ball.move 0
(Ball.move)
@0
D=A-1
(Ball.move$START)
@Ball.move$END
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
@Ball.move$START
0;JMP
(Ball.move$END)

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

// call Ball.hide 1
@RET13$Ball.hide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Ball.hide
0;JMP
(RET13$Ball.hide)

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
@TRUE5
D;JLT
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

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Ball$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Ball$IF_FALSE1
0;JMP

// label IF_TRUE1
(Ball$IF_TRUE1)

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

// push this 5
@R3
D=M
@5
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

// goto IF_END1
@Ball$IF_END1
0;JMP

// label IF_FALSE1
(Ball$IF_FALSE1)

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

// push this 6
@R3
D=M
@6
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

// push this 9
@R3
D=M
@9
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Ball$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Ball$IF_FALSE2
0;JMP

// label IF_TRUE2
(Ball$IF_TRUE2)

// push this 7
@R3
D=M
@7
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Ball$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Ball$IF_FALSE3
0;JMP

// label IF_TRUE3
(Ball$IF_TRUE3)

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

// goto IF_END3
@Ball$IF_END3
0;JMP

// label IF_FALSE3
(Ball$IF_FALSE3)

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

// label IF_END3
(Ball$IF_END3)

// goto IF_END2
@Ball$IF_END2
0;JMP

// label IF_FALSE2
(Ball$IF_FALSE2)

// push this 7
@R3
D=M
@7
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Ball$IF_TRUE4
D;JNE

// goto IF_FALSE4
@Ball$IF_FALSE4
0;JMP

// label IF_TRUE4
(Ball$IF_TRUE4)

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

// goto IF_END4
@Ball$IF_END4
0;JMP

// label IF_FALSE4
(Ball$IF_FALSE4)

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

// label IF_END4
(Ball$IF_END4)

// label IF_END2
(Ball$IF_END2)

// label IF_END1
(Ball$IF_END1)

// push this 8
@R3
D=M
@8
A=D+A
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
@Ball$IF_TRUE5
D;JNE

// goto IF_FALSE5
@Ball$IF_FALSE5
0;JMP

// label IF_TRUE5
(Ball$IF_TRUE5)

// push this 7
@R3
D=M
@7
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE6
@SP
AM=M-1
D=M
@Ball$IF_TRUE6
D;JNE

// goto IF_FALSE6
@Ball$IF_FALSE6
0;JMP

// label IF_TRUE6
(Ball$IF_TRUE6)

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

// goto IF_END6
@Ball$IF_END6
0;JMP

// label IF_FALSE6
(Ball$IF_FALSE6)

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

// label IF_END6
(Ball$IF_END6)

// goto IF_END5
@Ball$IF_END5
0;JMP

// label IF_FALSE5
(Ball$IF_FALSE5)

// push this 7
@R3
D=M
@7
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE7
@SP
AM=M-1
D=M
@Ball$IF_TRUE7
D;JNE

// goto IF_FALSE7
@Ball$IF_FALSE7
0;JMP

// label IF_TRUE7
(Ball$IF_TRUE7)

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

// goto IF_END7
@Ball$IF_END7
0;JMP

// label IF_FALSE7
(Ball$IF_FALSE7)

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

// label IF_END7
(Ball$IF_END7)

// label IF_END5
(Ball$IF_END5)

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

// push this 10
@R3
D=M
@10
A=D+A
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
@TRUE6
D;JGT
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

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE8
@SP
AM=M-1
D=M
@Ball$IF_TRUE8
D;JNE

// goto IF_FALSE8
@Ball$IF_FALSE8
0;JMP

// label IF_TRUE8
(Ball$IF_TRUE8)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@SP
AM=M-1
D=M
@R13
M=D
@14
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

// push this 10
@R3
D=M
@10
A=D+A
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

// goto IF_END8
@Ball$IF_END8
0;JMP

// label IF_FALSE8
(Ball$IF_FALSE8)

// label IF_END8
(Ball$IF_END8)

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

// push this 11
@R3
D=M
@11
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

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE9
@SP
AM=M-1
D=M
@Ball$IF_TRUE9
D;JNE

// goto IF_FALSE9
@Ball$IF_FALSE9
0;JMP

// label IF_TRUE9
(Ball$IF_TRUE9)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@SP
AM=M-1
D=M
@R13
M=D
@14
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

// push this 11
@R3
D=M
@11
A=D+A
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

// goto IF_END9
@Ball$IF_END9
0;JMP

// label IF_FALSE9
(Ball$IF_FALSE9)

// label IF_END9
(Ball$IF_END9)

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

// push this 12
@R3
D=M
@12
A=D+A
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
@TRUE8
D;JGT
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

// if-goto IF_TRUE10
@SP
AM=M-1
D=M
@Ball$IF_TRUE10
D;JNE

// goto IF_FALSE10
@Ball$IF_FALSE10
0;JMP

// label IF_TRUE10
(Ball$IF_TRUE10)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@SP
AM=M-1
D=M
@R13
M=D
@14
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

// push this 12
@R3
D=M
@12
A=D+A
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

// goto IF_END10
@Ball$IF_END10
0;JMP

// label IF_FALSE10
(Ball$IF_FALSE10)

// label IF_END10
(Ball$IF_END10)

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

// push this 13
@R3
D=M
@13
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

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE11
@SP
AM=M-1
D=M
@Ball$IF_TRUE11
D;JNE

// goto IF_FALSE11
@Ball$IF_FALSE11
0;JMP

// label IF_TRUE11
(Ball$IF_TRUE11)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@SP
AM=M-1
D=M
@R13
M=D
@14
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

// push this 13
@R3
D=M
@13
A=D+A
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

// goto IF_END11
@Ball$IF_END11
0;JMP

// label IF_FALSE11
(Ball$IF_FALSE11)

// label IF_END11
(Ball$IF_END11)

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.show 1
@RET14$Ball.show
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Ball.show
0;JMP
(RET14$Ball.show)

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

// push this 14
@R3
D=M
@14
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

// function Ball.bounce 5
(Ball.bounce)
@5
D=A-1
(Ball.bounce$START)
@Ball.bounce$END
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
@Ball.bounce$START
0;JMP
(Ball.bounce$END)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@RET15$Math.divide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET15$Math.divide)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@RET16$Math.divide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET16$Math.divide)

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

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE10
D;JEQ
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

// if-goto IF_TRUE12
@SP
AM=M-1
D=M
@Ball$IF_TRUE12
D;JNE

// goto IF_FALSE12
@Ball$IF_FALSE12
0;JMP

// label IF_TRUE12
(Ball$IF_TRUE12)

// push constant 10
@10
D=A
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

// goto IF_END12
@Ball$IF_END12
0;JMP

// label IF_FALSE12
(Ball$IF_FALSE12)

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
@TRUE11
D;JLT
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

// not
@SP
A=M-1
M=!M

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

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE12
D;JEQ
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

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// neg
@SP
A=M-1
M=-M

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE14
D;JEQ
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

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// if-goto IF_TRUE13
@SP
AM=M-1
D=M
@Ball$IF_TRUE13
D;JNE

// goto IF_FALSE13
@Ball$IF_FALSE13
0;JMP

// label IF_TRUE13
(Ball$IF_TRUE13)

// push constant 20
@20
D=A
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

// goto IF_END13
@Ball$IF_END13
0;JMP

// label IF_FALSE13
(Ball$IF_FALSE13)

// push constant 5
@5
D=A
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

// label IF_END13
(Ball$IF_END13)

// label IF_END12
(Ball$IF_END12)

// push this 14
@R3
D=M
@14
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
@TRUE15
D;JEQ
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

// if-goto IF_TRUE14
@SP
AM=M-1
D=M
@Ball$IF_TRUE14
D;JNE

// goto IF_FALSE14
@Ball$IF_FALSE14
0;JMP

// label IF_TRUE14
(Ball$IF_TRUE14)

// push constant 506
@506
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

// push constant 50
@50
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

// call Math.multiply 2
@RET17$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET17$Math.multiply)

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

// call Math.divide 2
@RET18$Math.divide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET18$Math.divide)

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

// call Math.multiply 2
@RET19$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET19$Math.multiply)

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

// goto IF_END14
@Ball$IF_END14
0;JMP

// label IF_FALSE14
(Ball$IF_FALSE14)

// push this 14
@R3
D=M
@14
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

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE16
D;JEQ
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

// if-goto IF_TRUE15
@SP
AM=M-1
D=M
@Ball$IF_TRUE15
D;JNE

// goto IF_FALSE15
@Ball$IF_FALSE15
0;JMP

// label IF_TRUE15
(Ball$IF_TRUE15)

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

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET20$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET20$Math.multiply)

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

// call Math.divide 2
@RET21$Math.divide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET21$Math.divide)

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

// call Math.multiply 2
@RET22$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET22$Math.multiply)

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

// goto IF_END15
@Ball$IF_END15
0;JMP

// label IF_FALSE15
(Ball$IF_FALSE15)

// push this 14
@R3
D=M
@14
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

// eq
@SP
AM=M-1
A=A-1
D=M
A=A+1
D=D-M
@TRUE17
D;JEQ
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

// if-goto IF_TRUE16
@SP
AM=M-1
D=M
@Ball$IF_TRUE16
D;JNE

// goto IF_FALSE16
@Ball$IF_FALSE16
0;JMP

// label IF_TRUE16
(Ball$IF_TRUE16)

// push constant 250
@250
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

// push constant 25
@25
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

// call Math.multiply 2
@RET23$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET23$Math.multiply)

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

// call Math.divide 2
@RET24$Math.divide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET24$Math.divide)

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

// call Math.multiply 2
@RET25$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET25$Math.multiply)

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

// goto IF_END16
@Ball$IF_END16
0;JMP

// label IF_FALSE16
(Ball$IF_FALSE16)

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

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@RET26$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET26$Math.multiply)

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

// call Math.divide 2
@RET27$Math.divide
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET27$Math.divide)

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

// call Math.multiply 2
@RET28$Math.multiply
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
(RET28$Math.multiply)

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

// label IF_END16
(Ball$IF_END16)

// label IF_END15
(Ball$IF_END15)

// label IF_END14
(Ball$IF_END14)

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

// call Ball.setDestination 3
@RET29$Ball.setDestination
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
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
@Ball.setDestination
0;JMP
(RET29$Ball.setDestination)

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

