#!/usr/bin/env ruby

# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

puts "Enter a word or multiple words: "
user_input = gets.chomp

arr = user_input.split

count = 0

arr.each { |element| count += element.length }

puts "There are #{count} characters in \"#{user_input}\""
