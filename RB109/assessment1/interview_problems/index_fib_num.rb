#!/usr/bin/env ruby
#
# index_fib_num.rb
#
# select the element out of the array if its index is a fibonacci number
# Question: Should the method return a new array or only one element?
# Question: Should the fib numbers start at 0 or 1?
# 
# Problem: We need to create a new array, built by selecting only the elements in another array in which the index is a fibonacci number.
# Examples: elements_at_fib_num_indices([1, 2])           => [1, 2]
#           elements_at_fib_num_indices([1, 2, 3, 4, 5])  => [1, 2, 3, 4]
#           elements_at_fib_num_indices([1])              => [1]
# Data structure: Array
# Algorithm:
#           1. Generate an array of fib numbers up to array length.
#           2. Loop through the array and select elements in which the index is in the fib_numbers array.
#           3. Return the array from the previous method.


def elements_at_fib_num_index(arr)
  fib_nums = generate_fib_nums(arr.length)

  fib_array = []

  arr.each_index { |x| fib_array << arr[x] if fib_nums.include?(x) }

  fib_array
end

def generate_fib_nums(array_length)
  fib_nums = [0, 1, 1]
  i = 1

  loop do
    break if i >= array_length
    fib_nums << fib_nums[i] + fib_nums[i + 1]

    i += 1
  end

  fib_nums
end

my_array = []

rand(5..100).times do |x|
  my_array[x] = rand(100)
end

puts "The original array is: #{my_array.inspect}"
puts "The new array of elements with indices that are fib numbers: #{elements_at_fib_num_index(my_array).inspect}"
