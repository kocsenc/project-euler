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

  final_sum = 2+3
  final_sum_test = 2+3

  # The power of reusing code!
  # Almost used //, too much Java!
  while true do
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
          puts 'Found ' + counter.to_s + 'th Prime = ' + counter.to_s
          arr.push(counter)
          final_sum = final_sum + counter
        else
          break
        end
      end
    end
    counter += 1
  end
  arr.each { |x| final_sum_test = final_sum_test + x }

  puts 'Final Sum = ' + final_sum.to_s
  puts 'Final Sum [test] = ' + final_sum_test.to_s


end

main(2000000)