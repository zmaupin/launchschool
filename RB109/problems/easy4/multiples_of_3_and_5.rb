#!/usr/bin/env ruby

# Multiples of 3 and 5
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.
def multisum(num)
  multiples = 0
  (num + 1).times { |x| multiples += x if x % 3 == 0 || x % 5 == 0 }
  puts multiples
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
