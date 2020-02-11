#!/usr/bin/env ruby
#
# fizzbuzz.rb
#
# Write a method that takes two arguments:
#   1. the starting number
#   2. the ending number
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz". If a number is divisible by 5, print "Buzz". Finally is a number is divisible by 3 and 5, print "FizzBuzz".
#
# Input: fizzbuzz(1, 15)
#
# Output:
# 1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"
#
# Questions: What should the method return?

def fizzbuzz(start_num, stop_num)
  fizzbuzz_arr = []

  (start_num..stop_num).each do |num|
    if (num % 3 == 0 && num % 5 == 0)
      fizzbuzz_arr << 'FizzBuzz'
    elsif (num % 3 == 0)
      fizzbuzz_arr << 'Fizz'
    elsif (num % 5 == 0)
      fizzbuzz_arr << 'Buzz'
    else
      fizzbuzz_arr << num
    end
  end

  puts fizzbuzz_arr.join(', ')
end

fizzbuzz(1, 15)
