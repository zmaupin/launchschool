#!/usr/bin/env ruby

VOWELS = 'aeiouAEOIU'

def remove_vowels(arr)
  new_arr = []
  arr.each do |str|
    new_arr << str.delete(VOWELS)
  end
  new_arr
end

# Alternate method
# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end
#   

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
