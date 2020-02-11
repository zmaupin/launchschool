#!/usr/bin/env ruby
# reverse_array.rb
#
# reverse an array without using the built-in reverse method

def reverse_array(arr)
  last_index = arr.length - 1

  reversed_array = []
  loop do
    reversed_array << arr[last_index]

    last_index -= 1
    break if last_index < 0
  end

  reversed_array
end

my_array = [8, 7, 1, 3, 5, 6, 2, 6, 19]

puts 'The original array is: ' + my_array.inspect
puts 'The reversed array is: ' + reverse_array(my_array).inspect
