class vmWriter:

	f = None

	def __init__(self, filename):
		self.f = open(filename, "w")

	def writePush(self, segment, index):
		self.writeCommand('push', segment, str(index))

	def writePop(self, segment, index):
		self.writeCommand('pop', segment, str(index))

	def writeArithmetic(self, command):
		self.writeCommand(command)

	def writeLabel(self, labelName):
		self.writeCommand('label', labelName)

	def writeGoto(self, labelName):
		self.writeCommand('goto', labelName)

	def writeIf(self, labelName):
		self.writeCommand('if-goto', labelName)

	def  writeCall(self, name, nArgs):
		self.writeCommand('call', name, str(nArgs))

	def writeFunction(self, name, nLocals):
		self.writeCommand('function', name, nLocals)

	def writeReturn(self):
		self.writeCommand('return')

	def close(self):
		self.f.close()

	def writeCommand(self, command, segment = '', index = ''):
		cmd = command + ' ' + segment + ' ' + str(index) + '\n'
		self.f.write(cmd)



		