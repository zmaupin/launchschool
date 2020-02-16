#!/usr/bin/env ruby
#
# Convert a String to a Number!
# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an number. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
# (length of the string).times do |index|
def string_to_signed_integer(str)
  modded_str = str.delete('-+')

  converted_num = 0
  (modded_str.length).times do |i|
    case modded_str.reverse[i]
    when '0' then num = 0
    when '1' then num = 1
    when '2' then num = 2
    when '3' then num = 3
    when '4' then num = 4
    when '5' then num = 5
    when '6' then num = 6
    when '7' then num = 7
    when '8' then num = 8
    when '9' then num = 9
    else
      puts "Something is not right."
    end

    if i == 0
      converted_num += num
    else
      converted_num += (num * (10 ** i))
    end
  end

  return converted_num * -1 if str[0] == '-'
  converted_num
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
