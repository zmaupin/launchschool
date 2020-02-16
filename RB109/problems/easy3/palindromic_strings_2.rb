#!/usr/bin/env ruby

# Palindromic Strings (Part 2)
# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.
# 
# Examples:
# 
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false
# 
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

def real_palindrome?(str)
  str = reduce_string(str)
  palindrome?(str)
end

def reduce_string(str)
  str.downcase.delete('^a-z0-9')
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
