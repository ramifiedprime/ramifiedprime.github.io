from datetime import datetime
import sys

def obfuscate(addr):
	d = datetime.now();
	f = open("obfuscate_"+d.strftime("%d%m%y_%H%M%S"),"w")
	for letter in addr:
		if letter == ".":
			letter = " [dot] "
		elif letter == "@":
			letter = " [at] "
		f.write("<span id=\"obfus\">"+letter+"</span>")
	f.close

if __name__ == '__main__':
	addr=sys.argv[1]
	obfuscate(addr)
