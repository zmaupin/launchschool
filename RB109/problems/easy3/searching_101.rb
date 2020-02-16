#!/usr/bin/env ruby

# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

def prompt(message)
  puts "==> #{message}"
end

arr = []
prompt "Enter the 1st number: "
arr << gets.chomp.to_i

prompt "Enter the 2nd number: "
arr << gets.chomp.to_i

prompt "Enter the 3rd number: "
arr << gets.chomp.to_i

prompt "Enter the 4th number: "
arr << gets.chomp.to_i

prompt "Enter the 5th number: "
arr << gets.chomp.to_i

prompt "Enter the last number: "
last_num = gets.chomp.to_i

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr.inspect}"
else
  puts "The number #{last_num} does not appear in #{arr.inspect}"
end
