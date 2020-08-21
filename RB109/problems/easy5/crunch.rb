#!/usr/bin/env ruby
# Write a method that takes a string argument and returns a new string that contains the value of the original
# string with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# Given a str, remove all the extra consecutive characters in the string.
# Return the modified string.
# Create a new array.
# Check if char, if the next char is the same, don't append to the new array.
#
def crunch(str)
  new_arr = []
  str_arr = str.split(//)
  str_arr.each_with_index do |char, index|
    new_arr << char unless str_arr[index + 1] == char
  end

  new_arr.join()
end

puts crunch('ddaaiillyy ddoouubbllee')
puts crunch('4444abcabccba')
puts crunch('ggggggggggggggg')
puts crunch('a')
puts crunch('')

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
