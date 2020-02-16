#!/usr/bin/env ruby
#
# Convert a String to a Number!
# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
def string_to_integer(str)
  arr = []
  str.each_char do |char|
    case char
    when '0' then arr << 0
    when '1' then arr << 1
    when '2' then arr << 2
    when '3' then arr << 3
    when '4' then arr << 4
    when '5' then arr << 5
    when '6' then arr << 6
    when '7' then arr << 7
    when '8' then arr << 8
    when '9' then arr << 9
    else
      puts 'Well that is not right.'
    end
  end
  arr.join
end

p string_to_integer('4321').class
p string_to_integer('570')
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
