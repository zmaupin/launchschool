#!/usr/bin/env ruby

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

first_input = 0
second_input = 0
loop do
  # These could be moved to their own method to read the number input.
  puts 'Enter a positive or negative integer: '
  first_input = gets.chomp

  puts 'Enter another positive or negative integer: '
  second_input = gets.chomp

  # There is a shorter way to do this:
  # If we have a negative number then break.
  # break if first_input.to_i * second_number.to_i < 0
  if first_input.to_i.negative? && second_input.to_i.positive?
    break
  elsif first_input.to_i.positive? && second_input.to_i.negative?
    break
  else
    puts 'One input must be a negative integer.'
    next
  end

  break if valid_number?(first_input) && valid_number?(second_input)
end

puts first_input.to_i + second_input.to_i
