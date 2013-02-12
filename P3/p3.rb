# Kocsen Chung
# Project Euler
# Problem 3

#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?


def main()
	no = 600851475143
	i = 2
	while no % i != 0 do 
		puts i 
		no -= 1
	end
end
main()