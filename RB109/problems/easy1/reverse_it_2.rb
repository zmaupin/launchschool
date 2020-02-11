#!/usr/bin/env ruby
# reverse_it_2.rb
#
# problem: write a method that takes one argument, a string containing one or
#   more words, and returns the given string with words that contain
#   five or more characters reversed. Include spaces only when more than one
#   word is present.
# examples:
#  puts reverse_words('Professional')          # => lanoisseforP
#  puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
#  puts reverse_words('Launch School')         # => hcnuaL loohcS
# data structure: array, split the string into an array
# algorithm:
#   - split the string into an array
#   - iterate over the array with `map`
#     - for each element, if it's length is greater than 4, reverse it
#   - end
def reverse_words(str)
  str_array = str.split
  str_array.each do |str|
    str.reverse! if str.length > 4
  end

  return str_array.join(' ') if str_array.length > 1
  str_array.join
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
