#!/usr/bin/env ruby

# Write a program called age.rb that asks a user how old they are and then 
# tells them how old they will be in 10, 20, 30 and 40 years.

puts 'How old are you? '
age = gets.chomp.to_i

[10, 20, 30, 40].each do |num|
  puts "In #{num} years you will be #{age + num}!"
end
