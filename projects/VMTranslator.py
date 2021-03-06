import glob
import sys
import os.path

currentAdd = 16
jumpNum = 0
ac = ["add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"]
staticTable = {}



def handler(filename, f):
	file = open(filename, "r")
	for line in file:
		assemblyStr = ""
		command = " ".join(line.split())
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
	arg1 = getArg1(command)
	arg2 = getArg2(command)
	s = ""
	if command.startswith("push"):
		if arg1 == "argument":
			s += "@" + arg2 + "\nD=A\n@ARG\nA=D+M\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "local":
			s += "@" + arg2 + "\nD=A\n@LCL\nA=D+M\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "static":
			key = filename + "." + arg2 
			if key not in staticTable:
				staticTable[key] = str(currentAdd)
				currentAdd += 1
			s += "@" + staticTable[key] + "\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "constant":
			s += "@" + arg2 + "\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "this":
			s += "@" + "R3\nD=M\n@" + arg2 + "\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
		elif arg1 == "that":
			s += "@" + "R4\nA=M\nD=A\n@" + arg2 + "\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
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
			key = filename + "." + arg2 
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
	if command in ac:
		return "C_ARITHMETIC"
	elif command.startswith("push"):
		return "C_PUSH"
	elif command.startswith("pop"):
		return "C_POP"
	elif command.startswith("label"):
		return "C_LABEL"
	elif command.startswith("goto"):
		return "C_GOTO"
	elif command.startswith("if_goto"):
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

userInput = sys.argv[1]
if ".vm" in userInput:
	filename = userInput
	if "/" not in filename:
		outfilename = filename[:filename.index(".") + 1] + "asm"
	else:
		last_pos = filename.rfind("/")
		savepath = filename[:last_pos + 1]
		outfilename = os.path.join(savepath, filename[last_pos + 1:filename.rfind(".") + 1] + "asm")
	f = open(outfilename, "w")
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
	for filename in os.listdir(os.getcwd()):
		if filename.endswith(".vm"):
			handler(filename, f)
			
	f.close()