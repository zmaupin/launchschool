#!/usr/bin/env ruby
#
# reverse_string.rb
#
# Problem: Write a method that returns a string in reverse.
# Examples:
#   reverse_string('blue') # => 'eulb'
#   reverse_string('boom') # => 'moob'
# Data Structure: String/Array
# Algorithm:
#   1. Split the string into an array of individual characters.
#   2. Loop in reverse order, adding each element to a new array.
#   3. Return the joined array.
# Code!

def reverse_string(str)
  arr = str.split('')
  reverse_str_array = []

  count = arr.length - 1

  while count >= 0
    reverse_str_array << arr[count]
    count -= 1
  end

  reverse_str_array.join
end

p reverse_string('blue')
p reverse_string('boom')
