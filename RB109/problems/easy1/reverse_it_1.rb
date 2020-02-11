#!/usr/bin/env ruby
#
# problem: Write a method that takes one argument, a string,
#   and returns a new string with the words in reverse order.

def reverse_sentence(str)
  str_arr = str.split
  count = str_arr.length - 1
  arr = []

  loop do
    break if count < 0
      arr << str_arr[count]
    count -= 1
  end

  arr.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') # == 'World Hello'
puts reverse_sentence('Reverse these words') # == 'words these Reverse'
