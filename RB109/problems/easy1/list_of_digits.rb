#!/usr/bin/env ruby
#
#  list_of_digits.rb
#
#  problem: write a method that takes on argument, a positive integer, and returns a list of the digits in the number.
#
def digit_list(num)
  return [] if num.negative?

  arr = []
  num.to_s.each_char { |char| arr << char.to_i  }
  arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
