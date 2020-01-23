#!/usr/bin/env ruby

loop do
  puts '>> Do you want me to print something? (y/n)'
  answer = gets.chomp

  if answer.downcase == 'y'
    puts 'something'
  else
    next
  end
end
