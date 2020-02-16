#!/usr/bin/env ruby
#
# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

ints = []

puts "Please enter a positive integer: "
ints << gets.chomp.to_i

puts "Please enter another positive integer:"
ints << gets.chomp.to_i

puts "#{ints[0]} + #{ints[1]} = #{ints[0] + ints[1]}"
puts "#{ints[0]} - #{ints[1]} = #{ints[0] - ints[1]}"
puts "#{ints[0]} * #{ints[1]} = #{ints[0] * ints[1]}"
puts "#{ints[0]} / #{ints[1]} = #{ints[0] / ints[1]}"
puts "#{ints[0]} % #{ints[1]} = #{ints[0] % ints[1]}"
puts "#{ints[0]} ** #{ints[1]} = #{ints[0] ** ints[1]}"
