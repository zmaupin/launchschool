#!/usr/bin/env ruby

# Write a method that returns an Array that contains every other element of 
# an Array that is passed in as an argument. 
# The values in the returned list should be those values that are in the 
# 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(arr)
  odd_elements = []
  arr.each_index { |idx| odd_elements << arr[idx] if idx.even? }
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
