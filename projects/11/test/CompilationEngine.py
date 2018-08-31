import glob
import sys
import os.path
import linecache
import SymbolTable
import VMWriter

opTable = ["+", "-", "*", "/", "&amp;", "|", "&lt;", "&gt;", "="]
symbols = ["{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&amp;", "|", "&lt;", "&gt;", "=", "~"]
keywords = ["class", "constructor", "function", "method", "field", \
"static", "var", "int", "char", "boolean", "void", "true", \
"false", "null", "this", "let", "do", "if", "else", "while", "return"]
f = None
filename = ''
currentLine = 1
currentClass = ''
currentSubroutine = ''
labelIndex = 0
vmWriter = None
symbolTable = None

ifEndLabelIndex= 0
ifTrueLabelIndex = 0
ifFalseLabelIndex = 0
whileExpLabelIndex = 0
whileEndLabelIndex = 0

class compilationEngine:

	def __init__(self, inFilename, outFilename):
		global f
		global vmWriter
		global symbolTable
		global filename
		filename = inFilename
		vmWriter = VMWriter.vmWriter(outFilename)
		symbolTable = SymbolTable.symbolTable()
		f = open(inFilename, "r")
		compileClass()

def newLabel(labelType):
	global ifEndLabelIndex
	global ifFalseLabelIndex
	global ifTrueLabelIndex
	global whileExpLabelIndex
	global whileEndLabelIndex

	if labelType == 'IF_END':
		s = "IF_END" + str(ifEndLabelIndex)
		ifEndLabelIndex += 1
	elif labelType == 'IF_TRUE':
		s = 'IF_TRUE' + str(ifTrueLabelIndex)
		ifTrueLabelIndex += 1
	elif labelType == 'IF_FALSE':
		s = 'IF_FALSE' + str(ifFalseLabelIndex)
		ifFalseLabelIndex += 1
	elif labelType == 'WHILE_EXP':
		s = 'WHILE_EXP' + str(whileExpLabelIndex)
		whileExpLabelIndex += 1
	elif labelType == 'WHILE_END':
		s = 'WHILE_END' + str(whileEndLabelIndex)
		whileEndLabelIndex += 1
	return s



def advance():
	global filename
	global currentLine
	s = linecache.getline(filename, currentLine)
	currentLine += 1
	return s
	

def retrace(n = 1):
	global currentLine
	for i in range(n):
		currentLine -= 1

def getToken(s):
	startPos = s.find(">")
	endPos = s.rfind("<")
	token = s[startPos + 1: endPos].strip()
	return token

def getTT(command):
	if command.startswith("<symbol>"):
		return "SYMBOL"
	elif command.startswith("<keyword>"):
		return "KEYWORD"
	elif command.startswith("<integerConstant>"):
		return "INT_CONST"
	elif command.startswith("<stringConstant>"):
		return "STRING_CONST"
	elif command.startswith("<identifier>"):
		return "IDENTIFIER"

def eat(errorcode, ps, s):
	if ps != s:
		print(errorcode)
		sys.exit()



def peekLine(f, nPeeks):
	pos = f.tell()
	for i in range(nPeeks):
		s = f.readline()
	f.seek(pos)
	return s

def compileClass():
	global f
	global vmWriter
	global currentClass
	advance()
	s = advance()
	if getToken(s) != 'class':
		print(81)
		sys.exit()
	

	s = advance()
	currentClass = getToken(s)
	s = advance()
	eat(92, '{', getToken(s))

	compileClassVarDec()
	compileSubroutine()


	s = advance()
	eat(106, '}', getToken(s))
	f.close()
	vmWriter.close()



def compileTerm():
	global vmWriter
	global symbolTable
	s = advance()

	varName = getToken(s)
	if getTT(s) == 'IDENTIFIER':
		varName = getToken(s)
		s = advance()
		if getToken(s) == '[':
			vmWriter.writePush(symbolTable.kindOf(varName), symbolTable.indexOf(varName))
			compileExpression()
			s = advance()
			eat(114, ']', getToken(s))
			vmWriter.writeArithmetic('add')
			vmWriter.writePop('pointer', 1)
			vmWriter.writePush('that', 0)
		elif getToken(s) == '.' or getToken(s) == '(':
			retrace(2)
			compileSubroutineCall()
		else:
			retrace()
			vmWriter.writePush(symbolTable.kindOf(varName), symbolTable.indexOf(varName))
	else:
		if getTT(s) == 'INT_CONST':
			vmWriter.writePush('constant', int(varName))
		elif getTT(s) == 'STRING_CONST':
			line = getToken(s)
			vmWriter.writePush('constant', len(line))
			vmWriter.writeCall('String.new', 1)

			for i in range(len(line)):
				vmWriter.writePush('constant', ord(line[i]))
				vmWriter.writeCall('String.appendChar', 2)
		elif getToken(s) == 'true':
			vmWriter.writePush('constant', 0)
			vmWriter.writeArithmetic('not')
		elif getToken(s) == 'false' or getToken(s) == 'null':
			vmWriter.writePush('constant', 0)
		elif getToken(s) == 'this':
			vmWriter.writePush('pointer', 0)
		elif getToken(s) == '(':
			compileExpression()
			s = advance()
			eat(146, ')', getToken(s))
		elif getToken(s) == '~' or getToken(s) == '-':
			symbol = getToken(s)
			compileTerm()

			if symbol == '-':
				vmWriter.writeArithmetic('neg')
			elif symbol == '~':
				vmWriter.writeArithmetic('not')
		else:
			print(156)
			sys.exit()




def compileExpression():
	compileTerm()

	loopCond = True
	while loopCond:
		s = advance()
		t = getToken(s)
		if t in opTable:
			if t == '+':
				opCmd = 'add'
			elif t == '-':
				opCmd = 'sub'
			elif t == '*':
				opCmd = 'call Math.multiply 2'
			elif t == '/':
				opCmd = 'call Math.divide 2'
			elif t == '&lt;':
				opCmd = 'lt'
			elif t == '&gt;':
				opCmd = 'gt'
			elif t == '=':
				opCmd = 'eq'
			elif t == '&amp;':
				opCmd = 'and'
			elif t == '|':
				opCmd = 'or'
			else:
				print('Unknown op!')
				sys.exit()

			compileTerm()
			vmWriter.writeCommand(opCmd)
		else:
			retrace()
			loopCond = False


def compileClassVarDec():
	global f
	s = advance()
	if getToken(s) == '}':
		retrace()
		return

	if getTT(s) != 'KEYWORD':
		print(197)
		sys.exit()

	if getToken(s) == 'constructor' or getToken(s) == 'function' or getToken(s) == 'method':
		retrace()
		return

	if getToken(s) != 'field' and getToken(s) != 'static':
		print(205)
		sys.exit()

	kind = getToken(s)
	dtype = compileType()

	while True:
		s = advance()
		if getTT(s) != 'IDENTIFIER':
			print(223)
			sys.exit()
		name  = getToken(s)
		symbolTable.define(name, kind, dtype)

		s = advance()

		if getToken(s) != ',' and getToken(s) != ';':
			print(229)
			sys.exit()

		if getToken(s) == ';':
			print('hsdd')
			break

		if getToken(s) == ',':
			pass

	compileClassVarDec()

	 
	

def compileStatements():

	s = advance()
	if getToken(s) == '}':
		retrace()
		return

	eat(247, 'KEYWORD', getTT(s))

	if getToken(s) == 'let':
		compileLet()
	elif getToken(s) == 'if':
		compileIf()
	elif getToken(s) == 'while':
		compileWhile()
	elif getToken(s) == 'do':
		compileDo()
	elif getToken(s) == 'return':
		compileReturn()

	compileStatements()
	


def compileParameterList():

	global symbolTable
	s = advance()
	retrace()
	if getToken(s) == ')':
		return

	dtype = ''
	loopCond = True
	while loopCond:
		dtype = compileType()
		s = advance()
		eat(280, 'IDENTIFIER', getTT(s))
		name = getToken(s)
		symbolTable.define(name, 'argument', dtype)

		s = advance()
		eat(285, 'SYMBOL', getTT(s))

		if getToken(s) == ')':
			retrace()
			loopCond = False

def compileSubroutine():

	global symbolTable
	global currentClass
	global currentSubroutine
	
	s = advance()
	t = getTT(s)

	if getToken(s) == '}':
		retrace()
		return

	if getToken(s) == 'field' or getToken(s) == 'static':
		retrace()
		return

	eat(283, 'KEYWORD', t)

	symbolTable.startSubroutine()

	keyword = getToken(s)

	if getToken(s) == 'method':
		symbolTable.define('this', 'argument', currentClass)

	dtype = compileType()

	s = advance()
	eat(292, 'IDENTIFIER', getTT(s))

	currentSubroutine = getToken(s)

	s = advance()
	eat(296, '(', getToken(s))

	compileParameterList()

	s = advance()
	eat(341, ')', getToken(s))

	s = advance()
	eat(344, '{', getToken(s))

	compileVarDec()
	writeFunctionDec(keyword)
	compileStatements()

	s = advance()
	eat(312, '}', getToken(s))

	compileSubroutine()

	
def compileVarDec():

	global symbolTable
	s = advance()
	if getToken(s) != 'var':
		retrace()
		return

	dtype = compileType()
	s = advance()
	eat(333, 'IDENTIFIER', getTT(s))
	name = getToken(s)
	symbolTable.define(name, 'local', dtype)
	while True:
		s = advance()
		if getToken(s) == ';':
			break
		eat(341, ',', getToken(s))
		s = advance()
		eat(343, 'IDENTIFIER', getTT(s))
		name = getToken(s)
		symbolTable.define(name, 'local', dtype)
	compileVarDec()

def compileLet():
	
	global symbolTable
	global vmWriter
	s = advance()
	eat(353, 'IDENTIFIER', getTT(s))

	varName = getToken(s)
	
	s = advance()
	if getTT(s) != 'SYMBOL' or (getToken(s) != '=' and getToken(s) != '['):
		print(359)
		sys.exit()

	expExist = False
	if getToken(s) == '[':
		expExist = True
		vmWriter.writePush(symbolTable.kindOf(varName), symbolTable.indexOf(varName))
		compileExpression()
		vmWriter.writeArithmetic('add')
		vmWriter.writePop('pointer', 1)
		vmWriter.writePush('that', 0)

		s = advance()
		eat(372, ']', getToken(s))

	if expExist:
		s = advance()
	eat(376, '=', getToken(s))
	compileExpression()
	s = advance()
	eat(379, ';', getToken(s))

	if expExist:
		vmWriter.writePop('temp', 0)
		vmWriter.writePop('pointer', 1)
		vmWriter.writePush('temp', 0)
		vmWriter.writePop('that', 0)

	else:
		vmWriter.writePop(symbolTable.kindOf(varName), symbolTable.indexOf(varName))

def compileIf():

	global symbolTable
	global vmWriter

	trueLabel = newLabel('IF_TRUE')
	elseLabel = newLabel('IF_FALSE')
	endLabel = newLabel('IF_END')

	s = advance()
	eat(407, '(', getToken(s))
	compileExpression()
	
	s = advance()
	eat(411, ')', getToken(s))

	vmWriter.writeIf(trueLabel)
	vmWriter.writeGoto(elseLabel)

	s = advance()
	eat(417, '{', getToken(s))

	vmWriter.writeLabel(trueLabel)
	compileStatements()
	vmWriter.writeGoto(endLabel)
	
	s = advance()
	eat(420, '}', getToken(s))

	vmWriter.writeLabel(elseLabel)
	s = advance()
	if getToken(s) == 'else':
		s = advance()
		eat(429, '{', getToken(s))
		compileStatements()
		s = advance()
		eat(432, '}', getToken(s))
	else:
		retrace()
	vmWriter.writeLabel(endLabel)


def compileWhile():

	global vmWriter
	loopLabel = newLabel('WHILE_EXP')
	outLoopLabel = newLabel('WHILE_END')

	s = advance()
	eat(443, '(', getToken(s))

	vmWriter.writeLabel(loopLabel)
	compileExpression()
	vmWriter.writeArithmetic('not')

	s = advance()
	eat(452, ')', getToken(s))

	vmWriter.writeIf(outLoopLabel)
	s = advance()
	
	eat(457, '{', getToken(s))
	compileStatements()

	s = advance()
	eat(462, '}', getToken(s))

	vmWriter.writeGoto(loopLabel)
	vmWriter.writeLabel(outLoopLabel)


def compileDo():

	global vmWriter
	compileSubroutineCall()
	s = advance()
	eat(471, ';', getToken(s))
	vmWriter.writePop('temp', 0)

def compileReturn():
	s = advance()
	if getToken(s) == ';':
		vmWriter.writePush('constant', 0)
	else:
		retrace()
		compileExpression()

		s = advance()
		eat(483, ';', getToken(s))

	vmWriter.writeReturn()


def compileExpressionList():

	nArgs = 0
	s = advance()
	if getToken(s) == ')':
		retrace()
	else:
		nArgs = 1
		retrace()
		compileExpression()

		loopCond = True
		while loopCond:
			s = advance()
			if getToken(s) == ',':
				compileExpression()
				nArgs += 1
			else:
				retrace()
				loopCond = False

	return nArgs



def compileType():

	s = advance()
	t = getToken(s)
	
	if t in keywords and (t == 'int' or t == 'char' or t == 'boolean' or t == 'void'):
		return t

	if getTT(s) == 'IDENTIFIER':
		return t

	print(458)
	sys.exit()

def writeFunctionDec(keyword):

	global symbolTable
	global vmWriter

	vmWriter.writeFunction(currentFunction(), symbolTable.varCount('local'))

	if keyword == 'method':
		vmWriter.writePush('argument', 0)
		vmWriter.writePop('pointer', 0)
	elif keyword == 'construct':
		vmWriter.writePush('constant', symbolTable.varCount('field'))
		vmWriter.writeCall('Memory.alloc', 1)
		vmWriter.writePush('pointer', 0)




def currentFunction():
	global currentSubroutine
	global currentClass

	if len(currentClass) != 0 and len(currentSubroutine):
		return currentClass + '.' + currentSubroutine
	return ''

def compileSubroutineCall():

	global symbolTable
	global vmWriter
	global currentClass

	nArgs = 0
	s = advance()
	eat(549, 'IDENTIFIER', getTT(s))
	name1 = getToken(s)

	s = advance()
	if getToken(s) != '(' and getToken(s) != '.':
		print(553)
		sys.exit()
	if getToken(s) == '(':
		vmWriter.writePush('pointer', 0)
		nArgs = compileExpressionList() + 1
		vmWriter.writeCall(currentClass + '.' + name1, nArgs)
	elif getToken(s) == '.':
		s = advance()
		name2 = getToken(s)
		dtype = symbolTable.typeOf(name1)
		
		if dtype == 'int' or dtype == 'char' or dtype == 'boolean' or dtype == 'void':
			print(565)
			sys.exit()
		elif dtype == 'NONE':
			funcName = name1 + '.' + name2
		else:
			nArgs = 1
			vmWriter.writePush(symbolTable.kindOf(name1), symbolTable.indexOf(name1))
			funcName = symbolTable.typeOf(name1) + '.' + name2
		
		s = advance()
		eat(573, '(', getToken(s))
		nArgs += compileExpressionList()
		s = advance()
		eat(577, ')', getToken(s))

		vmWriter.writeCall(funcName, nArgs)
	else:
		print(582)
		sys.exit()

def errorCheck(s):
	global currentLine
	print(s)
	print(currentLine)