#!/usr/bin/env ruby

choice = ''

loop do
  puts 'How many lines do you want to print? '
  choice = gets.chomp.to_i
  if choice < 3
    puts 'Please enter at least 3.'
  else
    break
  end
end

choice.times { puts 'Launch School is the best!' }

