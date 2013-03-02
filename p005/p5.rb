# Kocsen Chung
#

#Smallest multiple
#Problem 5
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible 
#by all of the numbers from 1 to 20?

def main()
	num = 2520
	while true do
		puts "Trying algorithm with number: " + num.to_s
		if (num%19  == 0) and (num%20  == 0) and (num%18  == 0) and (num%17 == 0) and (num%16  == 0) and (num%15  ==  0)  and (num%14  == 0) and (num%13  == 0) and (num%12  == 0) and (num%11  == 0) and (num%10  == 0) and (num%7  == 0) 
			puts "Answer: " + num.to_s
			return
		end
		num +=1
	end	
end

main()