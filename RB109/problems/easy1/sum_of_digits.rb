#!/usr/bin/env ruby
#
# sum_of_digits.rb
#
# problem: write a method that takes one argument, a positive integer,
#   and returns the sum of its digits.
def sum(num)
  arr = num.to_s.split('').map do |x|
    x.to_i
  end.reduce(&:+)
end

# Alternate:
# def sum(num)
#   num.to_s.chars.map(&:to_i).reduce(:+)
# end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
