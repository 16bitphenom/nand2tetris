from collections import defaultdict
d = defaultdict(list)
f = open("test.txt", "r")
for line in f:
	l = line.split(",")
	details = (l[1], l[2], l[3])
	d[l[0]].append(details)
f.close()
for k, v in d.items():
	print(k)