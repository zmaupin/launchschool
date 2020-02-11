#!/usr/bin/env ruby
#
# stringy_strings.rb
#
# problem: write a method that takes one argument, a positive integer,
#   and returns a string of alternating 1s and 0s, always starting with 1.
#   The length of the string should match the given integer.
# examples:
#  puts stringy(6) == '101010'
#  puts stringy(9) == '101010101'
#  puts stringy(4) == '1010'
#  puts stringy(7) == '1010101'
# data structure: array
# algo:
#   - call times on the num argument passed to stringy
#
#
def stringy(num)
  arr = []
  num.times do |i|
    arr.append(1) if i.even?
    arr.append(0) if i.odd?
  end

  arr.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
