from collections import defaultdict

def init():
	global sc_dict
	global cc_dict
sList = ["STATIC", "FIELD", "ARG", "VAR"]
fList = ["FUNCTION", "METHOD", "CONSTRUCTOR"]
xmlStr = ""
subOn = False
f = None


def getToken(s):
	startPos = s.find(">")
	endPos = s.rfind("</")
	token = s[startPos + 1: endPos].strip()
	return token

def peekLine(nPeeks):
	global f
	pos = f.tell()
	for i in range(nPeeks):
		s = f.readline()
	f.seek(pos)
	return s

def getTT(s):
	if getToken(command) == "-" or getToken(command) == "~":
		return "UOP"
	elif command.startswith("<symbol>"):
		return "SYMBOL"
	elif command.startswith("<keyword>"):
		if getToken(command) == "field":
			return "FIELD"
		elif getToken(command) == "static":
			return "STATIC"
		elif getToken(command) == "var":
			return "VAR"
		elif getToken(command) == "function":
			return "FUNCTION"
		elif getToken(command) == "constructor":
			return "CONSTRUCTOR"
		elif getToken(command) == "method":
			return "METHOD"
	elif command.startswith("<integerConstant>"):
		return "INT_CONST"
	elif command.startswith("<stringConstant>"):
		return "STRING_CONST"
	elif command.startswith("<identifier>"):
		return "IDENTIFIER"


def tableMaker(f):
	cc_dict = defaultdict(list)
	fRI = 0
	sRI = 0
	f.readline()
	f.readline()
	f.readline()
	f.readline()
	s = peekLine(1)
	subOn = False
	while getToken(s) != "</tokens>" and getToken(s) not in fList:
		kind = getTT(f.readline())
		aType = getToken(f.readline())
		s = peekLine(1)
		while getToken(s) != ";":
			name = getToken(f.readline())
			if kind == "field":
				rIndex = fRI
				fRI += 1
			else:
				rIndex = sRI
				sRI += 1
			details = (kind, aType, rIndex)
			cc_dict[name].append(details)
			s = f.readline()
		s = peekLine(1)


def startSubroutine(f):
	sc_dict = defaultdict(list)
	aRI = 0
	vRI = 0
	f.readline()
	f.readline()
	f.readline()
	f.readline()
	s = peekLine(1)
	while getToken(s) != ")":
		aType = getToken(f.readline())
		name = getToken(f.readline())
		details = (aType, "ARG", aRI)
		aRI += 1
		sc_dict[name].append(details)
		s = f.readline()
	f.readline()
	s = f.readline()
	while getToken(s) != "}":
		if getToken(s) == "var":
			kind = getTT(s)
			aType = getToken(f.readline())
			while getToken(s) != ";":
				name = getToken(f.readline())
				details = (aType, kind, vRI)
				vRI += 1
				sc_dict[name].append(details)
				s = f.readline()
		s = f.readline()

def varCount(kind):
	count = 0
	for k, v in sc_dict.items():
		for dTuple in v:
			if dTuple[1] == kind:
				count += 1
	return count

def kindOf(name, dScope):
	for k, v in dScope:
		if k == name:
			return v[0][1]
	return "NONE"

def typeOf(name, dScope):
	for k, v in dScope:
		if k == name:
			return v[0][0]
	return "NONE"

def indexOf(name, dScope):
	for k, v in dScope:
		if k == name:
			return v[0][2]
	return -1



