# Kocsen Chung
# Project euler # 9

#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
#include 'Math'

def main()
	x = result()
	puts "Answer: " + x.inspect
end

def result()
	arr = Array.new
	2.upto(1000){ |a|
		2.upto(1000) { |b|
			2.upto(1000) { |c|
				if ((a+b+c) == 1000)
					x = a**2
					y = b**2					
					xPlusY = x+y
					z = c**2
					if ( xPlusY == z)
						puts "Found Answer"
						puts "a " + a.to_s
						puts "b " + b.to_s
						puts "c " + c.to_s
						puts "c squared  = " + z.to_s
						if !arr.include?(a*b*c)
							arr.push(a*b*c)
						end
					end
				end

			}
		}
		puts( (a/1000).to_s + "% Done...")
	}
	return arr
end


main()
