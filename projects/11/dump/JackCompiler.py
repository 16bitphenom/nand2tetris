import glob
import sys
import os.path
import Tokenizer
import CompilationEngine

def main():
	global fn
	userInput = sys.argv[1]
	if ".jack" in userInput:
		filename = userInput
		if "/" not in filename:
			pos = filename.find(".jack")
			fn = filename[: pos]
			#newpath = fn
			#if not os.path.isdir(newpath):
			#	os.makedirs(newpath)
			outfilenameT = filename[:filename.index(".")]  + "T.xml"
			outfilename = filename[:filename.index(".")]  + ".vm"
		else:
			last_pos = filename.rfind("/")
			pos = filename.find(".jack")
			fn = filename[last_pos + 1: pos]
			savepath = filename[:last_pos]
			#newpath = savepath + "/" + fn
			#if not os.path.isdir(newpath):
			#	os.makedirs(newpath)
			outfilenameT = filename[last_pos + 1:filename.rfind(".")] + "T.xml"
			outfilename = filename[last_pos + 1:filename.rfind(".")] + ".vm"
		ofT = open(outfilenameT, "w")
		xmlOp = Tokenizer.tokenizer(filename)
		ofT.write(xmlOp)
		ofT.close()
		of = open(outfilename, "w")
		xmlOp = CompilationEngine.compilationEngine(outfilenameT)
		of.write(xmlOp)
		of.close()
	else:
		os.chdir(userInput)
		if userInput.endswith("/"):
			last_pos = userInput.rfind("/")
			second_last_pos = userInput[: last_pos].rfind("/")
			#newpath = userInput[second_last_pos + 1: last_pos]
		else:
			if "/" in userInput:
				last_pos = userInput.rfind("/")
			else:
				last_pos = 0
			#newpath = userInput[last_pos :]
		#if not os.path.isdir(newpath):
		#	os.makedirs(newpath)
		for filename in os.listdir(os.getcwd()):
			if filename.endswith(".jack"):
				pos = filename.find(".jack")
				fn = filename[: pos]
				outfilenameT = fn + "T.xml"
				outfilename = fn + ".vm"
				ofT = open(outfilenameT, "w")
				xmlOp = Tokenizer.tokenizer(filename)
				ofT.write(xmlOp)
				ofT.close()
				of = open(outfilename, "w")
				xmlOp = CompilationEngine.compilationEngine(outfilenameT)
				print(outfilenameT)
				of.write(xmlOp)
				of.close()

if __name__ == "__main__":
	main()