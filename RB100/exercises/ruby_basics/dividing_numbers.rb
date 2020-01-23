#!/usr/bin/env ruby

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

int_one = ''
int_two = ''
loop do
  puts 'Enter the first integer: '
  int_one = gets.chomp

  puts 'Enter the second integer: '
  int_two = gets.chomp

  if valid_number?(int_one) && valid_number?(int_two)
    break
  elsif int_two.to_i.zero?
    puts 'The second number must not be zero.'
  else
    puts '>> You have entered an invalid number.'
  end
end

puts int_one.to_i / int_two.to_i


# You can also use two separate loops. One to get the numerator and the other to
# get the denominator.
