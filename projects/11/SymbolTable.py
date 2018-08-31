cs_dict = {}
ss_dict = {}
index_table = {}

class Symbol(object):

	def __init__(self, name, kind, dtype, rI):
		self.name = name
		self.kind = kind
		self.dtype = dtype
		self.rI = rI

	def getName(self):
		return self.name

	def getKind(self):
		return self.kind

	def getDType(self):
		return self.dtype

	def  getIndex(self):
		return self.rI



class symbolTable(object):
	
	def __init__(self):
		global ss_dict
		global cs_dict

		cs_dict = {}
		ss_dict = {}
		index_table['static'] = -1
		index_table['local'] = -1
		index_table['field'] = -1
		index_table['argument'] = -1

	def startSubroutine(self):
		global ss_dict
		ss_dict = {}
		index_table['argument'] = -1
		index_table['local'] = -1

	def define(self, name, kind, dtype):
		global ss_dict
		global cs_dict
		global index_table

		index_table[kind] += 1
		rI = index_table[kind]
		symbol = Symbol(name, kind, dtype, rI)

		if kind == 'field' or kind == 'static':
			cs_dict[name] = symbol

		elif kind == 'argument' or kind == 'local':
			ss_dict[name] = symbol

	def varCount(self, kind):
		global index_table
		return index_table[kind] + 1

	def kindOf(self, name):
		symbol = self.lookUp(name)
		if symbol != 'NONE':
			return symbol.getKind()
		else:
			return None

	def typeOf(self, name):
		symbol = self.lookUp(name)
		if symbol != 'NONE':
			return symbol.getDType()
		else:
			return 'NONE'

	def indexOf(self, name):
		symbol = self.lookUp(name)
		if symbol != 'NONE':
			return symbol.getIndex()
		else:
			return -1



	def lookUp(self, name):
		global cs_dict
		global ss_dict

		if ss_dict.get(name) != None:
			return ss_dict[name]
		elif cs_dict.get(name) != None:
			return cs_dict[name]
		else:
			return 'NONE'

