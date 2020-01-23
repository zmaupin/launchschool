#!/usr/bin/env ruby

# Ideally you should get the input in the loop, then when the input is valid break out
# of the loop and continue the program. This code is not ideal.

loop do
  puts '>> Do you want me to print something? (y/n)'
  answer = gets.chomp
  if answer.downcase == 'y'
    puts 'something'
  elsif answer.downcase != 'n'
    puts 'Invalid input! Please enter y or n.'
  else
   break 
  end
end
