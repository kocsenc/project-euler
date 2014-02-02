# Kocsen Chung	
# Project Euler Problem 23

# With Using names.txt, a 46K text
# file containing over five-thousand first names, begin by sorting it into
# alphabetical order. Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list to obtain a name
# score.



point_dict = {
	"A":1,
	"B":2,
	"C":3,
	"D":4,
	"E":5,
	"F":6,
	"G":7,
	"H":8,
	"I":9,
	"J":10,
	"K":11,
	"L":12,
	"M":13,
	"N":14,
	"O":15,
	"P":16,
	"Q":17,
	"R":18,
	"S":19,
	"T":20,
	"U":21,
	"V":22,
	"W":23,
	"X":24,
	"Y":25,
	"Z":26
	}

def main():
	for line in open("./names.txt"):
		str = line.replace('"', "")
	
	name_array = str.split(",")
	print(name_array)

def get_word_val(word):
	pass	

if __name__ == "__main__":
	main()
