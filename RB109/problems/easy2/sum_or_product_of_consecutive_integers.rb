#!/usr/bin/env ruby

user_int = -1
loop do
  print 'Please enter an integer greater than 0: '
  user_int = gets.chomp.to_i

  if (user_int < 0) || (user_int.to_s.to_i != user_int)
    puts 'That is not a valid integer input.'
    next
  end
  break
end

operation = ''
loop do
  print "Enter 's' to compute the sum, 'p' to compute the product: "
  operation = gets.chomp.downcase

  if (operation != 'p') && (operation != 's')
    puts 'That is not a valid operation input.'
    next
  end
  break
end

answer = 0
if operation == 's'
  (1..user_int).each { |num| answer += num }
  puts "The sum of integers between 1 and #{user_int} is #{answer}."
elsif operation == 'p'
  answer = 1
  (1..user_int).each { |num| answer *= num }
  puts "The product of integers between 1 and #{user_int} is #{answer}."
end
