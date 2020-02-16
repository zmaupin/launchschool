#!/usr/bin/env ruby
#
# Running Totals
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
# def running_total(arr)
#   new_arr = arr.map do |i|
#     next if i == 0
#     arr[i] = arr[i] + arr[i - 1]
#   end
# end
# The problem with the above method is that it mutates the caller.
def running_total(arr)
  sum = 0
  arr.map { |x| sum += x }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
