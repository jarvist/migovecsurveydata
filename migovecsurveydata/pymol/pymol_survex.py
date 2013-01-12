'''
(c) 2011 Thomas Holder, MPI for Developmental Biology
'''

from pymol import cmd, CmdException

def load_3d(filename, object=''):
	'''
DESCRIPTION

    Load a survex 3d cave survey as "molecule"

    http://survex.com
	'''
	from chempy import Atom, Bond, models

	if object == '':
		import os
		object = os.path.splitext(os.path.basename(filename))[0]

	f = open(filename, 'rb')

	line = f.readline() # File ID
	if not line.startswith('Survex 3D Image File'):
		print " Error: not a Survex 3D File"
		raise CmdException

	line = f.readline() # File format version
	assert line[0] == 'v'
	ff_version = int(line[1:])

	line = unicode(f.readline(), 'latin1') # Survex title
	line = f.readline() # Timestamp

	class Station(tuple):
		def __new__(cls, xyz):
			return tuple.__new__(cls, xyz)
		def __init__(self, xyz):
			self.labels = []
			self.adjacent = []
		def connect(self, other):
			self.adjacent.append(other)

	class Survey(dict):
		def __init__(self):
			self.prev = None
			self.curr_label = ''
		def get(self, xyz):
			s = Station(xyz)
			return dict.setdefault(self, s, s)
		def line(self, xyz):
			s = self.get(xyz)
			self.prev.connect(s)
			self.prev = s
		def move(self, xyz):
			s = self.get(xyz)
			self.prev = s
		def label(self, xyz):
			s = survey.get(xyz)
			s.labels.append(self.curr_label)
		def __repr__(self):
			return 'Survey(' + repr(self.keys())[1:-1] + ')'

	survey = Survey()

	def read_xyz():
		x = read_int(4, 1)
		y = read_int(4, 1)
		z = read_int(4, 1)
		return [ x, y, z ]

	def read_int(len, sign):
		int = 0
		for i in range(len):
			int |= read_byte() << (8 * i)
		if sign and (int >> (8 * len - 1)):
			int -= (1 << 8 * len)
		return int

	def read_len():
		len = read_byte()
		if len == 0xfe:
			len += read_int(2, 0)
		elif len == 0xff:
			len = read_int(4, 0)
		return len

	def read_label():
		len = read_len()
		if len > 0:
			survey.curr_label += skip_bytes(len)

	def skip_bytes(n):
		return f.read(n)

	def read_byte():
		byte = f.read(1)
		if len(byte) != 1:
			return -1
		return ord(byte)

	while 1:
		byte = read_byte()
		if byte == -1:
			break
		
		if byte == 0x00:
			# STOP
			survey.curr_label = ''
		elif byte <= 0x0e:
			# TRIM
			(i,n) = (-16,0)
			while n < byte:
				i -= 1
				if survey.curr_label[i] == '.': n += 1
			survey.curr_label = survey.curr_label[:i + 1]
		elif byte <= 0x0f:
			# MOVE
			xyz = read_xyz()
			survey.move(xyz)
		elif byte <= 0x1f:
			# TRIM
			survey.curr_label = survey.curr_label[:15 - byte]
		elif byte <= 0x20:
			# DATE
			if ff_version < 7:
				skip_bytes(4)
			else:
				skip_bytes(2)
		elif byte <= 0x21:
			# DATE
			if ff_version < 7:
				skip_bytes(8)
			else:
				skip_bytes(3)
		elif byte <= 0x22:
			# Error info
			skip_bytes(5 * 4)
		elif byte <= 0x23:
			# DATE
			skip_bytes(4)
		elif byte <= 0x24:
			# DATE
			continue
		elif byte <= 0x2f:
			# Reserved
			continue
		elif byte <= 0x31:
			# XSECT
			read_label()
			skip_bytes(4 * 2)
		elif byte <= 0x33:
			# XSECT
			read_label()
			skip_bytes(4 * 4)
		elif byte <= 0x3f:
			# Reserved
			continue
		elif byte <= 0x7f:
			# LABEL
			read_label()
			xyz = read_xyz()
			survey.label(xyz)
		elif byte <= 0xbf:
			# LINE
			read_label()
			xyz = read_xyz()
			survey.line(xyz)
		elif byte <= 0xff:
			# Reserved
			continue

	model = models.Indexed()
	for s in survey:
		l0, _, l1 = s.labels[0].rpartition('.')
		resi, name = l1[:5], l1[5:]
#		segi, chain, resn = l0[:4],l0[-4:-3], l0[-3:]
		segi, chain, resn = l0[-8:-4], l0[-4:-3], l0[-3:]
		atom = Atom()
		atom.coord = [i/100.0 for i in s]
		atom.segi = segi
		atom.chain = chain
		atom.resn = resn
		atom.name = name
		atom.resi = resi
		atom.b = atom.coord[2]
		model.add_atom(atom)

	s2i = dict((s,i) for (i,s) in enumerate(survey))
	for s in survey:
		for o in s.adjacent:
			bnd = Bond()
			bnd.index = [s2i[s], s2i[o]]
			model.add_bond(bnd)

	cmd.load_model(model, object, 1)
	cmd.show_as('lines', object)
	cmd.spectrum('b', 'rainbow', object)

cmd.extend('load_3d', load_3d)
