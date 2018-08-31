import glob
import sys
import os.path
filename = sys.argv[1]
of = open("outfile.txt", "w")
f = open(filename, "r")
s = ""
count = 0
for line in f:
	if line != "\n" and not line.startswith("//"):
		if line.startswith("("):
			s += "   " + line
		else:
			s += "    " + str(count) + "." + line
			count += 1
of.write(s)
of.close()