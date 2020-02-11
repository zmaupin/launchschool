#!/usr/bin/env ruby
#
# palindrome.rb
#
# write a method to determine if a word is a palindrome, without using the reverse method
#
# Problem:        determine if a word is a palindrome (a word is a palindrome if, in reverse, it's the  same word)
# Examples:       'dad' is a palindrome, 'not' is not
# Data Structure: boolean (return true or false)
# Algorithm:      1. i is the first index, 0
#                 2. j is the last index (length - 1)
#                 3. while i is less than or equal to j
#                 4. while j is greater than or equal to i (we don't want to cross indices, let's meet in the middle) 
#                   5. if i == j, next
#                   6. return false if i != j
#               7. return true if we're still here

def palindrome?(word)
  i = 0
  j = word.length - 1

  while i <= j && j >= i
    return false if word[i] != word[j]
    j -= 1
    i += 1
  end
  
  true
end

my_word = 'dad'
another_word = 'not'

puts "True/False: #{my_word} is a palindrome."
puts palindrome?(my_word)

puts "True/False: #{another_word} is a palindrome."
puts palindrome?(another_word)
