#!/usr/bin/env ruby

USERNAME = 'zac'
PASSWORD = 'blue'

loop do
  puts '>> Please enter your user name: '
  input_username = gets.chomp

  puts '>> Please enter your password: '
  input_password = gets.chomp

  break if input_username == USERNAME && input_password == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'

