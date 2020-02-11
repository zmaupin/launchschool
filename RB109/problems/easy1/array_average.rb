#!/usr/bin/env ruby
#
# array_average.rb
#
# problem: write a method that takes one argument, an array containing
#   integers, and returns the average of all numbers in the array.
#   The array will never be empty and the numbers will always be positive
#   integers.
# examples:
#   puts average([1, 5, 87, 45, 8, 8]) == 25
#   puts average([9, 47, 23, 95, 16, 52]) == 40
# data structure: int
# algorithm:
#   - set total =0 
#   - loop over the array
#     - add each element to total
#   - return total / arr.length
def average(arr)
  total = 0
  arr.each { |num| total += num }

  total / arr.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

