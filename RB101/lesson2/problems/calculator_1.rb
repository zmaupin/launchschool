#!/usr/bin/env ruby

puts 'Enter the first number: '
first_num = gets.chomp.to_i

puts 'Enter the second number: '
second_num = gets.chomp.to_i

puts 'What operation do you want to perform? (add, subtract, multiply, divide) '
operation = gets.chomp

case operation
when 'add'
  puts first_num + second_num
when 'subtract'
  puts first_num - second_num
when 'multiply'
  puts first_num * second_num
when 'divide'
  puts first_num / second_num
else
  puts 'That is not a valid operation.'
end
