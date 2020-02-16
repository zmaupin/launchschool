#!/usr/bin/env ruby

# Palindromic Strings (Part 1)
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.
# 
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Ruby has a method for this... String#reverse.
# def palindrome?(str)
#   str == str.reverse
# end

def palindrome?(str)
  arr          = str.chars
  front_of_arr = 0
  back_of_arr  = arr.length - 1

  while front_of_arr < back_of_arr
    return false if arr[front_of_arr] != arr[back_of_arr]
    front_of_arr += 1
    back_of_arr -= 1
  end

  true
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
