import glob
import sys
import os.path
idx = 0

symbols = ["{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&", "|", "<", ">", "=", "~"]
keywords = ["class", "constructor", "function", "method", "field", \
"static", "var", "int", "char", "boolean", "void", "true", \
"false", "null", "this", "let", "do", "if", "else", "while", "return"]

def tokenizer(filename):
	global idx
	f = open(filename, "r")
	xmlStr = "<tokens>\n"
	commentOn = False
	for line in f:
		idx = 0
		command = " ".join(line.split())
		command = command.strip()
		if "//" in command:
			if command.startswith("//"):
				continue
			else:
				if commentOn == False:
					command = command[: command.find("//")]
		if "/*" in command:
			if command.startswith("/*"):
				if not command.endswith("*/"):
					commentOn = True
		if "*/" in command:
			commentOn = False

		if commentOn == False:
			if "//" in command:
				command = command[: command.find("//")]
			if "/*" in command:
				command = command[: command.find("/*")]
			if "*/" in command:
				command = command[command.find("*/") + 2:]
			else:
				pass

		if commentOn == True:
			command = ""

		command += "\0"
		while hasMoreTokens(command):
			currentToken = advance(command)
			if currentToken != "":
				tt = tokenType(currentToken)
				if tt == "SYMBOL":
					xmlStr += "<symbol> "
					xmlStr += symbol(currentToken)
					xmlStr += " </symbol>\n"
				elif tt == "KEYWORD":
					kw = keyword(currentToken)
					xmlStr +=  "<keyword> " + kw.lower() + " </keyword>\n"
				elif tt == "INT_CONST":
					xmlStr += "<integerConstant> " + str(intVal(currentToken)) + " </integerConstant>\n"
				elif tt == "STRING_CONST":
					xmlStr += "<stringConstant> " + stringVal(currentToken) + " </stringConstant>\n"
				elif tt == "IDENTIFIER":
					xmlStr += "<identifier> " + identifier(currentToken) + " </identifier>\n"
	xmlStr += "</tokens>\n"



		
	return xmlStr




def hasMoreTokens(command):
	global idx
	if command[idx] == "\0":
		return False
	else:
		return True

def advance(command):
	global idx
	current = ""
	while True:
		nextChar = command[idx]
		if tokenType(current) != "IDENTIFIER":
			if tokenType(current) == "INT_CONST" and isInt(nextChar):
				current += nextChar
				idx += 1
				continue
			else:
				break
		if nextChar == " ":
			idx += 1
			break
		if nextChar == "\"":
			current += nextChar
			idx += 1
			nextChar = command[idx]
			while nextChar != "\"":
				current += nextChar
				idx += 1
				nextChar = command[idx]
			idx += 1
			return current
		if tokenType(nextChar) == "SYMBOL" and current != "":
			break
		if nextChar == "\0":
			break
		current += nextChar
		idx += 1
	return current

def tokenType(currentToken):
	if currentToken in symbols:
		return "SYMBOL"
	elif currentToken in keywords:
		return "KEYWORD"
	elif isInt(currentToken):
		return "INT_CONST"
	elif currentToken.startswith("\""):
		return "STRING_CONST"
	else:
		return "IDENTIFIER"

def symbol(currentToken):
	if currentToken == "&":
		return "&amp;"
	elif currentToken == "<":
		return "&lt;"
	elif currentToken == ">":
		return "&gt;"
	elif currentToken == "\"":
		return "&quot;"
	else:
		return currentToken

def keyword(currentToken):
	return currentToken.upper()

def identifier(currentToken):
	return currentToken

def stringVal(currentToken):
	return currentToken[1:]

def intVal(currentToken):
	return int(currentToken)

def isInt(s):
	try:
		int(s)
		return True
	except ValueError:
		return False