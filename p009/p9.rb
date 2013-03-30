# Kocsen Chung
# Project euler # 9

#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
include 'Math'

def main()
	x = result
	puts "Answer: " + x.to_s
end

def result()
	2.upto(1000/3){ |a|
		2.upto(1000/3) { |b|
			2.upto(1000/3) { |c|
				if (a+b+c == 1000)
					x = a**2
					y = b**2					
					z = c**2
					zans = 

					if ((a**2 + b**2) == c**2)
						puts "Found Answer"
						return a*b*c
					end
				end

			}
		}
	}
	return "NO ANSWER"
end


main()
