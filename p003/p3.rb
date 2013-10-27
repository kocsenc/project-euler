# Kocsen Chung
# Project Euler
# Problem 3

#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?


def main
  puts 'Starting program..'
  x = generate(600851475143)
  puts x[-1].to_s


end

def generate(n)
  return [] if n == 1
  factor = (2..n).find { |x| n % x == 0 }
  [factor] + generate(n/factor)
end

main()