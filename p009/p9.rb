# Kocsen Chung
# Project euler # 9

#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a^2 + b^2 = c^2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
#include 'Math'

def main()
  x = result()
  puts "Answer: " + x.inspect
  File.open("out.txt", "w") do |file|
    x.each { |_| file.puts(x.to_s + ' //  ') }
  end
end

def result()
  yo = Array.new
  arr = Array.new
  2.upto(1000) { |a|
    2.upto(1000) { |b|
      2.upto(1000) { |c|
        if (a+b+c) == 1000 && a < b && b < c
          x = a**2
          y = b**2
          xPlusY = x+y
          z = c**2
          if (xPlusY == z)
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
    prog = a/1000
    if !yo.include?(prog)
      puts(prog.to_s + "% Done...")
      yo.push prog
    end
  }
  return arr
end


main()
