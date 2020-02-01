#!/usr/bin/env ruby
# palindrome.rb
#
# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.
#

def prompt(message)
  puts ">> #{message}"
end

def change_me!(string)
  string.upcase
end

def palindrome?(string)
  # a word is a palindrome if it's spelled the same backwards
  string == string.reverse
end

prompt "Please enter a string: "
user_input = gets.chomp

user_input_array = user_input.split(' ')

user_input_array.each_index do |index|
  change_me!(user_input_array[index]) if palindrome?(user_input_array[index])
end

prompt "The new string is: #{user_input_array}."
