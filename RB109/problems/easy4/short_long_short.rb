#!/usr/bin/env ruby
#
# Short Long Short
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.
def short_long_short(str1, str2)
  if str1.length <= str2.length
    return [str1, str2, str1].join
  end
  [str2, str1, str2].join 
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
