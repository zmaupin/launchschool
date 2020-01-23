#!/usr/bin/env ruby

choice = ''

loop do
  puts 'How many lines do you want to print? '
  choice = gets.chomp

  break if choice.downcase == 'q'

  if choice.to_i < 3
    puts 'Please enter at least 3.'
  else
    choice.to_i.times { puts 'Launch School is the best!' }
  end
end
