# Kocsen Chung 
# Project Euler #7
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10001st prime number?
def main(nth)
  arr = Array.new
  arr.push(2)
  arr.push(3)
  counter = 4

  while arr.size < nth do
    if counter%2 != 0 and counter%3 != 0
      temp = 4
      while temp*temp <= counter do
        if counter % temp == 0
          break
        end
        temp += 1
      end

      if temp*temp > counter
        puts 'Found ' + counter.to_s + 'th Prime = ' + counter.to_s
        arr.push(counter)
      end

    end
    counter += 1

  end
  puts arr[-1].to_s
end

main(10001)
