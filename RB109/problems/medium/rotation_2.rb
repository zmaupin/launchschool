#!/usr/bin/env ruby
#
# rotation_2.rb
#
# problem: write a method that can rotate the last `n` digits of an array.
# example:
#   rotate_rightmost_digits(735291, 1) == 735291
#   rotate_rightmost_digits(735291, 2) == 735219
#   rotate_rightmost_digits(735291, 3) == 735912
#   rotate_rightmost_digits(735291, 4) == 732915
#   rotate_rightmost_digits(735291, 5) == 752913
#   rotate_rightmost_digits(735291, 6) == 352917
# data structure: array
# algorithm:
#   - creat a new array equal to slice of old array 0 to `n - 1`.
#   - add rotated array from `n` to the length of the old array - 1

def rotate_array(arr)
  arr[1,arr.length - 1] + [arr[0]]
end

def rotate_rightmost_digits(num, digits_to_rotate)
  arr = num.to_s.split
  puts "arr is #{arr}"
  arr = arr[0, digits_to_rotate - 1] + rotate_array(arr[digits_to_rotate, num.size])
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


