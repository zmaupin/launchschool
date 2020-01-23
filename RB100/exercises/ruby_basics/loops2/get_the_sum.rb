#!/usr/bin/env ruby

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts 'That is correct!'
    break
  else
    puts 'Wrong answer. Try again!'
  end

  # alternative syntax
  # if answer == 4
  #   puts 'That is correct!'
  #   break
  # end
  #
  # puts 'Wrong answer. Try again!'
end
