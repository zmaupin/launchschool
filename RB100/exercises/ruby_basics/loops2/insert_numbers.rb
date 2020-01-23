#!/usr/bin/env ruby
numbers = []

loop do
  puts 'Enter any number: '
  input = gets.chomp.to_i

  numbers.append(input)
  break if numbers.length >= 5
end

puts numbers
