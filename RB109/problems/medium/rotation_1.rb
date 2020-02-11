#!/usr/bin/env ruby
#
# rotation_1.rb
#
# problem: write a method that rotates an array by moving the first element to
# the end of the array. The original array should not be modified.
# examples:
#  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
#  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
#  rotate_array(['a']) == ['a']
#  
#  x = [1, 2, 3, 4]
#  rotate_array(x) == [2, 3, 4, 1]   # => true
#  x == [1, 2, 3, 4]                 # => true
# data structure: array
# algorithm:
#   - initialize a new array to a slice of the old array starting at element 1, to the end
#   - add element at index 0 of old array to the end of the new array
#
def rotate_array(arr)
  arr[1, arr.length - 1] + [arr[0]]
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
