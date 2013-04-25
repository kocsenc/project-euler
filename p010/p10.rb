# Kocsen Chung
# Project Euler 
# Problem 3

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

def main(n)
	arr = Array.new
	arr.push(2)
	arr.push(3)
	counter = 4

	finalSum = 2+3
	finalSumTest = 2+3

	# The power of reusing code!
	# Almost used //, too much Java!
	while(true) do 
		if counter%2 != 0 and counter%3 != 0 
			temp = 4
			while temp*temp <= counter do
				if counter % temp == 0
					break
				end
				temp += 1
			end
			if temp*temp > counter
				if counter <= n
					puts "Found " + counter.to_s + "th Prime = " + counter.to_s
					arr.push(counter)
					finalSum = finalSum + counter
				else
					break
				end
			end
		end
		counter += 1
	end
	arr.each {|x| finalSumTest = finalSumTest + x}

	puts "Final Sum = " + finalSum.to_s
	puts "Final Sum [test] = " + finalSumTest.to_s


end

main(2000000)