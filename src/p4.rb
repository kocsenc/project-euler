#!/usr/bin/env ruby
# Kocsen Chung
## Largest palindrome product - Problem 4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def main
  ans = Array.new
  999.downto(100) { |num1|
    puts ('Multiplying set of ' + num1.to_s)
    999.downto(100) { |num2|

      mult = num1*num2
      if palindrome?(mult)
        puts "Palndrome found " + palindrome?(mult).to_s + ' with ' + num1.to_s + ' x ' +num2.to_s
        puts (mult).to_s
        ans.push(mult)
      end
    }
  }

  ans.sort!
  puts 'Answer: ' + ans[-1].to_s
end

def palindrome?(input)
  input = input.to_s
  return input == input.reverse
end

main()
