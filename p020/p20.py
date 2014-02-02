# Kocsen Chung
# Project Euler Problem 20

# Find the sum of the digits in the number 100!

import math

def main():
	digit_array = list(str(math.factorial(100)))
	
	sum = 0
	for digit in digit_array:
		sum += int(digit)

	print(str(sum))

if __name__ == "__main__":
	main()
