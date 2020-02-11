#!/usr/bin/env ruby
#
# odd.rb
# problem: write a method that takes one integer argument, positive, 
#   negative, or zero. The method returns true if the number's absolute value
#   is odd. False otherwise. Assume the argument is a valid integer.
# examples:
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true
# data structure: boolean
# algorithm:
#   if num is zero, then return false
#   if number modulo 2 then we have an even number, return false
#   else
#   return true

def is_odd?(num)
  return false if num.zero?

  return false if num % 2 == 0

  true
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
