import glob
import sys
import os.path

xmlStr = ""
opTable = ["+", "-", "*", "/", "&amp;", "|", "&lt;", "&gt;", "="]
symbolTable = ["{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&amp;", "|", "&lt;", "&gt;", "=", "~"]

def getToken(s):
	startPos = s.find(">")
	endPos = s.rfind("<")
	token = s[startPos + 1: endPos].strip()
	return token

def findToken(command):
	if getToken(command) == "-" or getToken(command) == "~":
		return "UOP"
	elif command.startswith("<symbol>"):
		return "SYMBOL"
	elif command.startswith("<keyword>"):
		return "KEYWORD"
	elif command.startswith("<integerConstant>"):
		return "INT_CONST"
	elif command.startswith("<stringConstant>"):
		return "STRING_CONST"
	elif command.startswith("<identifier>"):
		return "IDENTIFIER"

def eat(ps, s):
	global xmlStr
	if ps == "identifier":
		xmlStr += s
		return True
	elif ps == getToken(s):
		 xmlStr += s
		 return True
	else:
		return False


def compilationEngine(filename):
	global xmlStr
	xmlStr = ""
	f = open(filename, "r")
	f.readline()
	compileClass(f)
	return xmlStr

def peekLine(f, nPeeks):
	pos = f.tell()
	for i in range(nPeeks):
		s = f.readline()
	f.seek(pos)
	return s

def compileClass(f):
	global xmlStr
	xmlStr += "<class>\n"
	s = f.readline()
	xmlStr += s
	s = f.readline()
	xmlStr += s
	s = f.readline()
	xmlStr += s

	s = f.readline()
	while getToken(s) != "}" and s != "":
		if getToken(s) == "static" or getToken(s) == "field":
			compileClassVarDec(f, s)

		elif getToken(s) == "constructor" or getToken(s) == "method" or getToken(s) == "function":
			compileSubroutine(f, s)
		s = f.readline()
	xmlStr += s

	xmlStr += "</class>\n"



def compileTerm(f, flag):
	global xmlStr
	if flag:
		xmlStr += "<term>\n"
	s = f.readline()
	tt = findToken(s)
	allowed = ["INT_CONST", "STRING_CONST", "KEYWORD"]
	if tt in allowed:
		xmlStr += s
	else:
		if not getToken(s) == "(":
			if findToken(s) == "UOP":
				if not eat("-", s):
					if not eat("~", s):
						print(91)
						sys.exit()
				compileTerm(f, True)
			else:
				s1 = peekLine(f, 1)
				if getToken(s1) == "[":
					xmlStr += s
					s = f.readline()
					if not eat("[", s):
						print(100)
						sys.exit()
					compileExpression(f, "]")
					s = f.readline()
					if not eat("]", s):
						print(108)
						sys.exit()
				elif getToken(s1) == ".":
					xmlStr += s
					s = f.readline()
					if not eat(".", s):
						print(107)
						sys.exit()
					s = f.readline()
					xmlStr += s
					s = f.readline()
					if not eat("(", s):
						print(113)
						sys.exit()
					compileExpressionList(f, ")")
					s = f.readline()
					if not eat(")", s):
						print(118)
						sys.exit()
				elif getToken(s1) == "(":
					xmlStr +=s
					s = f.readline()
					if not eat("(", s):
						print(125)
						sys.exit()
					compileExpressionList(f, ")")
					s = f.readline()
					if not eat(")", s):
						print(134)
						sys.exit()
				else:
					xmlStr += s

		else:
			if not eat("(", s):
				sys.exit()
				print(124)
			compileExpression(f, ")")
			s = f.readline()
			if not eat(")", s):
				print(145)
				sys.exit()

	if flag:
		xmlStr += "</term>\n"



def compileExpression(f, sym):
	global opTable
	global xmlStr
	xmlStr += "<expression>\n"
	compileTerm(f, True)
	s = peekLine(f, 1)
	while getToken(s) != sym:
		flag = False
		for c in opTable:
			if eat(c, s):
				f.readline()
				flag = True
				break
		if not flag:
			break
		compileTerm(f, True)
		s = peekLine(f, 1)
	xmlStr += "</expression>\n"


def compileClassVarDec(f, s):
	global xmlStr
	xmlStr += "<classVarDec>\n"
	xmlStr += s

	s = f.readline()
	if eat("identifier", s) == False:
		print(161)
		sys.exit()


	s = f.readline()
	if eat("identifier", s) == False:
		print(167)
		sys.exit()
	s = peekLine(f, 1)
	while getToken(s) != ";":
		s = f.readline()
		if not eat(",", s):
			print(173)
			sys.exit()
		s = f.readline()
		if not eat("identifier", s):
			print(176)
			sys.exit()
		s = peekLine(f, 1)
	s = f.readline()
	if not eat(";", s):
		sys.exit()
	xmlStr += "</classVarDec>\n"

def compileStatements(f, endS):
	global xmlStr
	xmlStr += "<statements>\n"
	s = peekLine(f, 1)
	while getToken(s) != endS:
		if getToken(s) == "let":
			compileLet(f)
		elif getToken(s) == "if":
			compileIf(f)
		elif getToken(s) == "while":
			compileWhile(f)
		elif getToken(s) ==  "do":
			compileDo(f)
		elif getToken(s) == "return":
			compileReturn(f)
		s = peekLine(f, 1)
	xmlStr += "</statements>\n"


def compileParameterList(f, endS):
	global xmlStr
	xmlStr += "<parameterList>\n"
	s = peekLine(f, 1)
	while not (getToken(s) == ")"):
		s = f.readline()
		xmlStr += s
		s = peekLine(f, 1)
	xmlStr += "</parameterList>\n"

def compileSubroutine(f, s):
	global xmlStr
	xmlStr += "<subroutineDec>\n"
	xmlStr += s
	xmlStr += f.readline()
	xmlStr += f.readline()
	s = f.readline()
	if not eat("(", s):
		print(218)
		sys.exit()
	compileParameterList(f, ")")
	s = f.readline()
	if not eat(")", s):
		sys.exit(224)
	xmlStr += "<subroutineBody>\n"
	s = f.readline()
	if not eat("{", s):
		print(224)
		sys.exit()
	isVarDecPresent = False
	s = peekLine(f, 1)
	while getToken(s) == "var":
		isVarDecPresent = True
		compileVarDec(f)
		s = peekLine(f, 1)
	compileStatements(f, "}")
	s = f.readline()
	if not eat("}", s):
		print(244)
		sys.exit()
	xmlStr += "</subroutineBody>\n"
	xmlStr += "</subroutineDec>\n"

def compileVarDec(f):
	global xmlStr
	xmlStr += "<varDec>\n"
	xmlStr += f.readline()
	s = f.readline()
	if eat("identifier", s) == False:
		print(243)
		sys.exit()

	s = f.readline()
	if eat("identifier", s) == False:
		print(248)
		sys.exit()
	s = f.readline()
	while getToken(s) != ";":
		if not eat(",", s):
			print(253)
			sys.exit()
		s = f.readline()
		if not eat("identifier", s):
			print(257)
			sys.exit()
		s = f.readline()
	xmlStr += s
	xmlStr += "</varDec>\n"

def compileLet(f):
	global xmlStr
	xmlStr += "<letStatement>\n"
	xmlStr += f.readline()
	s = f.readline()
	if not eat("identifier", s):
		print(269)
		sys.exit()
	s = f.readline()
	flag = False
	if getToken(s) == "[":
		flag = True
		xmlStr += s
		compileExpression(f, "]")
		s = f.readline()
		if not eat("]", s):
			print(308)
			sys.exit()
	if flag:
		s = f.readline()
	if not eat("=", s):
		print(276)
		sys.exit()
	compileExpression(f, ";")
	s = f.readline()
	if not eat(";", s):
		of = open("test.txt", "w")
		of.write(xmlStr)
		of.close()
		print(281)
		sys.exit()
	xmlStr += "</letStatement>\n"

def compileIf(f):
	global xmlStr
	xmlStr += "<ifStatement>\n"
	xmlStr += f.readline()
	s = f.readline()
	if not eat("(", s):
		print(296)
		sys.exit()
	compileExpression(f, ")")
	s = f.readline()
	if not eat(")", s):
		print(301)
		sys.exit()

	s = f.readline()
	if not eat("{", s):
		print(306)
		sys.exit()
	#s = f.readline()
	compileStatements(f, "}")
	s = f.readline()
	if not eat("}", s):
		print(319)
		sys.exit()
	s = peekLine(f, 1)
	if getToken(s) == "else":
		s = readline(f)
		xmlStr += s
		s = f.readline()
		if not eat("{"):
			print(316)
			sys.exit()
		compileStatements(f, "}")
		s = f.readline()
		if not eat("}", s):
			print(332)
			sys.exit()
	xmlStr += "</ifStatement>\n"

def compileWhile(f):
	global xmlStr
	xmlStr += "<whileStatement>\n"
	xmlStr += f.readline()
	s = f.readline()
	if not eat("(", s):
		print(327)
		sys.exit()
	compileExpression(f, ")")
	s = f.readline()
	if not eat(")", s):
		print(332)
		sys.exit()

	s = f.readline()
	if not eat("{", s):
		print(337)
		sys.exit()
	compileStatements(f, "}")
	s = f.readline()
	if not eat("}", s):
		print(357)
		sys.exit()
	xmlStr += "</whileStatement>\n"

def compileDo(f):
	global xmlStr
	xmlStr += "<doStatement>\n"
	s = f.readline()
	if not eat("do", s):
		print(347)
		sys.exit()
	compileTerm(f, False)
	s = f.readline()
	if not eat(";", s):
		print(389)	
		sys.exit()
	xmlStr += "</doStatement>\n"

def compileReturn(f):
	global xmlStr
	xmlStr += "<returnStatement>\n"
	xmlStr += f.readline()
	s = peekLine(f, 1)
	if getToken(s) != ";":
		compileExpression(f, ";")
	s = f.readline()
	if not eat(";", s):
			print(365)
			sys.exit()
	xmlStr += "</returnStatement>\n"

def compileExpressionList(f, endS = ")"):
	global xmlStr
	xmlStr += "<expressionList>\n"
	s = peekLine(f, 1)
	while not getToken(s) == endS:
		compileExpression(f, ")")
		s = peekLine(f, 1)
		if eat(",", s):
			s = f.readline()
		s = peekLine(f, 1)
	xmlStr += "</expressionList>\n"
