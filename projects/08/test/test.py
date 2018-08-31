jumpNum = 0
jumpc = "JLT"
f = open("test.txt", "w")
s = ""
s += "@SP\nAM=M-1\nD=M\nA=A-1\nM=D+M\n\n\n\n\n"
s += "@SP\nAM=M-1\nA=A-1\nD=M\nA=A+1\nD=D-M\n@TRUE" + str(jumpNum) + "\nD;" + jumpc +"\n@SP\nA=M-1\nM=0\n@CONTINUE" + str(jumpNum) + "\n0;JMP\n"
s += "(TRUE" + str(jumpNum) + ")\n@SP\nA=M-1\nM=-1\n(CONTINUE" + str(jumpNum) +")\n"
f.write(s)

f.close()