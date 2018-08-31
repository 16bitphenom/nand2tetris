import linecache

currentLine = 1
f = None
def advance():
	global f
	global currentLine
	s = linecache.getline(f, currentLine)
	currentLine += 1
	return s
	

def retrace(n = 1):
	global f
	global currentLine
	for i in range(n):
		currentLine -= 1





f = 'test.txt'

print(advance())
print(advance())
print(advance())
retrace(1)
print(advance())
