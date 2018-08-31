import glob
import sys
import os.path

currentAdd = 16
jumpNum = 0
retCounter = 0
ac = ["add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"]
staticTable = {}
fn = ""


def initiator(fp):
	f = "Sys.init"
	assemblyStr = ""
	assemblyStr += "//initialize\n"
	assemblyStr += "@256\nD=A\n@SP\nM=D\n"
	assemblyStr += "@1\nD=A\n@R1\nM=D\nM=-M\n"
	assemblyStr += "@2\nD=A\n@R2\nM=D\nM=-M\n"
	assemblyStr += "@3\nD=A\n@R3\nM=D\nM=-M\n"
	assemblyStr += "@4\nD=A\n@R4\nM=D\nM=-M\n"
	assemblyStr += "@RET$" + f + "\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
	assemblyStr += "@LCL\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@ARG\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@THIS\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@THAT\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@SP\nD=M\n@5\nD=D-A\n@ARG\nM=D\n" \
	+ "@SP\nD=M\n@LCL\nM=D\n" \
	+ "@" + f + "\n0;JMP\n" \
	+ "(RET$" + f + ")\n"
	fp.write(assemblyStr)
	fp.close()

def handler(filename, f):
	file = open(filename, "r")
	for line in file:
		assemblyStr = ""
		command = " ".join(line.split())
		command = command.strip()
		if command.startswith("//") or command == "":
			continue
		else:
			if "//" in command:
				command = command[: command.index("//")]
			commandT = commandType(command)
			if commandT == "C_ARITHMETIC":
				assemblyStr += writeArithmetic(command)
			elif commandT == "C_PUSH" or commandT == "C_POP":
				assemblyStr += writePushPop(command)
			elif commandT == "C_LABEL":
				assemblyStr += writeLabel(command)
			elif commandT == "C_GOTO":
				assemblyStr += writeGoto(command)
			elif commandT == "C_IF":
				assemblyStr += writeIf(command)
			elif commandT == "C_FUNCTION":
				assemblyStr += writeFunction(command)
			elif commandT == "C_CALL":
				assemblyStr += writeCall(command)
			elif commandT == "C_RETURN":
				assemblyStr += writeReturn() 

			f.write("// " + command + "\n")
			f.write(assemblyStr)
			f.write("\n")
	file.close()

def writeArithmetic(command):
	s = ""
	if command == "add":
		s += "@SP\nAM=M-1\nD=M\nA=A-1\nM=D+M\n"
	elif command == "sub":
		s += "@SP\nAM=M-1\nD=M\nA=A-1\nM=D-M\nM=-M\n"
	elif command == "neg":
		s += "@SP\nA=M-1\nM=-M\n"
	elif command == "gt" or command == "lt" or command == "eq":
		s += compareWriter(command)
	elif command == "and":
		s+= "@SP\nAM=M-1\nD=M\nA=A-1\nM=D&M\n"
	elif command == "or":
		s+= "@SP\nAM=M-1\nD=M\nA=A-1\nM=D|M\n"
	elif command == "not":
		s += "@SP\nA=M-1\nM=!M\n"
	else:
		pass
	return s

def writePushPop(command):
	global currentAdd
	global fn
	arg1 = getArg1(command)
	arg2 = getArg2(command)
	s = ""
	if command.startswith("push"):
		global fn
		if arg1 == "argument":
			s += "@" + arg2 + "\nD=A\n@ARG\nA=D+M\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "local":
			s += "@" + arg2 + "\nD=A\n@LCL\nA=D+M\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "static":
			key = fn + "." + arg2 
			if key not in staticTable:
				staticTable[key] = str(currentAdd)
				currentAdd += 1
			s += "@" + staticTable[key] + "\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "constant":
			s += "@" + arg2 + "\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "this":
			s += "@" + "R3\nD=M\n@" + arg2 + "\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "that":
			s += "@" + "R4\nD=M\n@" + arg2 + "\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "pointer":
			if arg2 == "0":
				p = "R3"
			else:
				p = "R4"
			s += "@" + p + "\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"

		elif arg1 == "temp":
			s += "@" + arg2 + "\nD=A\n@R5\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		else:
			pass
	elif command.startswith("pop"):
		if arg1 == "argument":
			s += "@SP\nAM=M-1\nD=M\n@R13\nM=D\n@" + arg2 + "\nD=A\n@ARG\nD=D+M\n@R14\nM=D\n@R13\nD=M\n@R14\nA=M\nM=D\n"
		elif arg1 == "local":
			s += "@SP\nAM=M-1\nD=M\n@R13\nM=D\n@" + arg2 + "\nD=A\n@LCL\nD=D+M\n@R14\nM=D\n@R13\nD=M\n@R14\nA=M\nM=D\n"
		elif arg1 == "static":
			key = fn + "." + arg2 
			if key not in staticTable:
				staticTable[key] = str(currentAdd)
				currentAdd += 1
			s += "@SP\nAM=M-1\nD=M\n@" + staticTable[key] + "\nM=D\n"
		elif arg1 == "this":
			s += "@SP\nAM=M-1\nD=M\n@R13\nM=D\n@" + arg2 + "\nD=A\n@R3\nD=D+M\n@R14\nM=D\n@R13\nD=M\n@R14\nA=M\nM=D\n"
		elif arg1 == "that":
			s += "@SP\nAM=M-1\nD=M\n@R13\nM=D\n@" + arg2 + "\nD=A\n@R4\nD=D+M\n@R14\nM=D\n@R13\nD=M\n@R14\nA=M\nM=D\n"
		elif arg1 == "pointer":
			if arg2 == "0":
				p = "R3"
			else:
				p = "R4"
			s += "@SP\nAM=M-1\nD=M\n@" + p + "\nM=D\n"

		elif arg1 == "temp":
			s += "@SP\nAM=M-1\nD=M\n@R13\nM=D\n@" + arg2 +"\nD=A\n@R5\nD=D+A\n@R14\nM=D\n@R13\nD=M\n@R14\nA=M\nM=D\n"
		else:
			pass
	return s

def writeInit():
	pass
	#TODO

def writeLabel(command):
	global fn
	command = command.split(" ")
	label = command[1]
	return "(" + fn + "$" + label + ")" + "\n"
 
def writeGoto(command):
	global fn
	command = command.split(" ")
	label = command[1]
	return "@" + fn + "$" + label + "\n0;JMP\n"

def writeIf(command):
	global fn
	command = command.split(" ")
	label = command[1]
	s = ""
	s += "@SP\nAM=M-1\nD=M\n@" + fn + "$" + label + "\nD;JNE\n"
	return s

def writeFunction(command):
	s = ""
	command = command.split(" ")
	f = command[1]
	k = command[2]
	s += "(" +f +")\n" \
	+ "@" +str(k) + "\n" \
	+ "D=A-1\n"\
	+ "(" + f + "$START)\n" \
	+ "@" + f + "$END\n" \
	+ "D;JLT\n" \
	+ "@R13\n" \
	+ "M=D\n" \
	+ "@SP\n" \
	+ "D=A\n" \
	+ "@SP\n" \
	+ "A=M\n" \
	+ "M=D\n" \
	+ "@SP\n" \
	+ "M=M+1\n" \
	+ "@R13\n" \
	+ "D=M\n" \
	+ "D=D-1\n" \
	+ "@" + f + "$START\n" \
	+ "0;JMP\n" \
	+ "(" + f + "$END)\n"
	return s

def writeCall(command):
	global retCounter
	s = ""
	command = command.split(" ")
	f = command[1]
	n = command[2]
	s += "@RET" + str(retCounter) + "$" + f + "\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
	s += "@LCL\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@ARG\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@THIS\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@THAT\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n" \
	+ "@SP\nD=M\n@" + str(n) + "\nD=D-A\n@5\nD=D-A\n@ARG\nM=D\n" \
	+ "@SP\nD=M\n@LCL\nM=D\n" \
	+ "@" + f + "\n0;JMP\n" \
	+ "(RET" + str(retCounter) + "$" + f + ")\n"
	retCounter += 1
	return s

def writeReturn():
	s = ""
	s += "@LCL\nD=M\n@R13\nM=D\n" \
	+ "@5\nD=A\n@R13\nA=M-D\nD=M\n@R14\nM=D\n" \
	+ "@SP\nAM=M-1\nD=M\n@ARG\nA=M\nM=D\n" \
	+ "@ARG\nD=M+1\n@SP\nM=D\n" \
	+ "@R13\nA=M-1\nD=M\n@THAT\nM=D\n" \
	+ "@2\nD=A\n@R13\nA=M-D\nD=M\n@THIS\nM=D\n" \
	+ "@3\nD=A\n@R13\nA=M-D\nD=M\n@ARG\nM=D\n" \
	+ "@4\nD=A\n@R13\nA=M-D\nD=M\n@LCL\nM=D\n" \
	+ "@R14\nA=M\n0;JMP\n"
	return s


def compareWriter(command):
	global jumpNum
	if command == "gt":
		jumpc = "JGT"
	elif command == "lt":
		jumpc = "JLT"
	elif command == "eq":
		jumpc = "JEQ"
	s = ""
	s += "@SP\nAM=M-1\nA=A-1\nD=M\nA=A+1\nD=D-M\n@TRUE" + str(jumpNum) + "\nD;" + jumpc +"\n@SP\nA=M-1\nM=0\n@CONTINUE" + str(jumpNum) + "\n0;JMP\n"
	s += "(TRUE" + str(jumpNum) + ")\n@SP\nA=M-1\nM=-1\n(CONTINUE" + str(jumpNum) +")\n"
	jumpNum += 1
	return s


def commandType(command):
	global ac
	c = command.split(" ")
	if c[0] in ac:
		return "C_ARITHMETIC"
	elif command.startswith("push"):
		return "C_PUSH"
	elif command.startswith("pop"):
		return "C_POP"
	elif command.startswith("label"):
		return "C_LABEL"
	elif command.startswith("goto"):
		return "C_GOTO"
	elif command.startswith("if-goto"):
		return "C_IF"
	elif command.startswith("function"):
		return "C_FUNCTION"
	elif command.startswith("call"):
		return "C_CALL"
	elif command.startswith("return"):
		return "C_RETURN"
	else:
		return 0; 

def getArg1(command):
	if commandType(command) == "C_ARITHMETIC":
		return command
	else:
		firstSpace = command.find(" ")
		secondSpace = command.find(" ", firstSpace + 1)
		return command[firstSpace + 1: secondSpace]


def getArg2(command):
	firstSpace = command.find(" ")
	secondSpace = command.find(" ", firstSpace + 1)
	return command[secondSpace + 1: ]

def main():
	global fn
	userInput = sys.argv[1]
	if ".vm" in userInput:
		filename = userInput
		if "/" not in filename:
			pos = filename.find(".vm")
			fn = filename[: pos]
			outfilename = filename[:filename.index(".") + 1] + "asm"
		else:
			last_pos = filename.rfind("/")
			pos = filename.find(".vm")
			fn = filename[last_pos + 1: pos]
			savepath = filename[:last_pos + 1]
			outfilename = os.path.join(savepath, filename[last_pos + 1:filename.rfind(".") + 1] + "asm")
		f = open(outfilename, "w")
		initiator(f)
		f = open(outfilename, "a")
		handler(filename, f)
		f.close()
	else:
		os.chdir(userInput)
		last_pos = userInput.rfind("/")
		first_pos = userInput.find("/")
		if last_pos != first_pos:
			second_last_pos = userInput[:last_pos].rfind("/")
			outfilename = userInput[second_last_pos + 1 : last_pos] + ".asm"
		else:
			outfilename = userInput[first_pos + 1:] + ".asm"
		f = open(outfilename, "w")
		initiator(f)
		f = open(outfilename, "a")
		for filename in os.listdir(os.getcwd()):
			if filename.endswith(".vm"):
				pos = filename.find(".vm")
				fn = filename[: pos]
				handler(filename, f)
				
		f.close()

if __name__ == "__main__":
	main()