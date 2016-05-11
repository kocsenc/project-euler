# Kocsen Chung
# Project Euler - Problem 6

#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
require 'math'

def main
  puts 'Starting Sum of squares with 10'
  s1 = 0
  s2 = 0
  1.upto(100) do |x|
    s1 += x**2
    s2 += x
  end
  s2 = s2**2
  puts 'S1 = ' + s1.to_s
  puts 'S2 = ' + s2.to_s
  puts 'S2 - S1 = ' + (s2-s1).to_s

end

def improved
  n = 100
  puts "Difference is #{ (n * (n**2 - 1) * (n / 4 + 1 / 6)).abs }."
end

improved()
