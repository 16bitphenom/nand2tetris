import sys
import os.path
filename = sys.argv[1]
if "/" not in filename:
	outfilename = filename[:filename.index(".") + 1] + "hack"
else:
	last_pos = filename.rfind("/")
	savepath = filename[:last_pos + 1]
	outfilename = os.path.join(savepath, filename[last_pos + 1:filename.rfind(".") + 1] + "hack")
def cType(line):
	if line.startswith("@"):
		return "A_TYPE"
	elif line.startswith("("):
		return "L_TYPE"
	else:
		return "C_TYPE"

def RepresentsInt(s):
    try: 
        int(s)
        return True
    except ValueError:
        return False


hack = open(outfilename, "w")
symbol_table = {"SP" : 0, "LCL" : 1, "ARG" : 2, "THIS": 3, "THAT" : 4, "SCREEN" : 16384, "KBD" : 24576, \
				"R0" : 0, "R1" : 1, "R2" : 2, "R3" : 3, "R4" : 4, "R5" : 5, "R6" : 6, "R7" : 7, "R8" : 8, \
				"R9" : 9, "R10" : 10, "R11" : 11, "R12" : 12, "R13" : 13, "R14" : 14, "R15" : 15}

dest = {"null":"000", "M":"001", "D":"010", "MD":"011", "A":"100", "AM":"101", "AD":"110", "AMD":"111"}
jump = {"null":"000", "JGT":"001", "JEQ":"010", "JGE":"011", "JLT":"100", "JNE":"101", "JLE":"110", "JMP":"111"}
comp = {"0":"0101010", "1":"0111111", "-1":"0111010", "D":"0001100", "A":"0110000", "!D":"0001101", "!A":"0110001", \
		"-D":"0001111", "-A":"0110011", "D+1":"0011111", "A+1":"0110111", "D-1":"0001110",\
		"A-1":"0110010", "D+A":"0000010", "D-A":"0010011", "A-D":"0000111", "D&A":"0000000", \
		"D|A":"0010101", "M":"1110000", "!M":"1110001", "-M":"1110011", "M+1":"1110111",\
		"M-1":"1110010","D+M":"1000010","D-M":"1010011","M-D":"1000111","D&M":"1000000",\
		"D|M":"1010101"}

linecount = 0
with open(filename, "r") as assembly:
	for line in assembly:
		command = "".join(line.split())
		if not (command.startswith("//")) and command != "":
			if command.startswith("("):
				p = command.index(")")
				loop_symbol = command[1:p]
				loop_address = linecount
				symbol_table[loop_symbol] = loop_address
			else:
				linecount += 1

n = 16
linecount = 0
with open(filename, "r") as assembly:
	machine_code = ""
	for line in assembly:
		command = "".join(line.split())
		if not (command.startswith("//")) and command != "":
			if "//" in command:
				command = command[:command.index("//")]
			command_type = cType(command)

			if command_type == "A_TYPE":
				command = command[1:]
				if RepresentsInt(command):
					machine_code = "0" + bin(int(command))[2:].zfill(15)
				else:
					if command in symbol_table:
						machine_code = "0" + bin(int(symbol_table[command]))[2:].zfill(15)
					else:
						symbol_table[command] = n
						machine_code = "0" + bin(n)[2:].zfill(15)
						n += 1
				if (linecount != 0):
						hack.write("\n")
				linecount += 1
				hack.write(machine_code)


			elif command_type == "C_TYPE":
				if ";" in command:
					pos_com = command.index(";")
					comp_com = command[:pos_com]
					jmp_com = command[pos_com + 1:]
					dest_bin = dest["null"]
					comp_bin = comp[comp_com]
					jump_bin = jump[jmp_com]
					machine_code = "111" + comp_bin + dest_bin + jump_bin
					if (linecount != 0):
						hack.write("\n")
					linecount += 1
					hack.write(machine_code)
				elif "=" in command:
					pos_com = command.index("=")
					dest_com = command[:pos_com]
					comp_com = command[pos_com + 1:]
					jump_bin = jump["null"]
					dest_bin = dest[dest_com]
					comp_bin = comp[comp_com]
					machine_code = "111" + comp_bin + dest_bin + jump_bin
					if (linecount != 0):
						hack.write("\n")
					linecount += 1
					hack.write(machine_code)

			else:
				continue

			

hack.close()